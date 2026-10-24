# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dirichlet.Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bed7b5de8c7de96a526fea0e5f5d0f0b85ec0b4f` · SHA-256 `db195fa0904c3ba266ca47115080691c13cabffc9e9a671f1e2baa1250703b10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirichletConvention.Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DirichletConvention.Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f","mathematical_subject":"Computation.DataStructures","original_sha256":"927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/WalshFourier/Dirichlet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.WalshFourier.Analysis


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirichletConvention.Variant927968a37952e249c89fc790723bcb31066a7c4d1a2929cc967e65152f8ec87f

namespace Boolean.Cube

namespace WalshFourier

/-- Product term across one coordinate edge. -/
def edgeDifferenceProduct {n : Nat}
    (f g : WalshFourier.Function n)
    (x : WalshFourier.Sample n)
    (i : Fin n) : Int :=
  (f (Hypercube.flip x i) - f x) *
    (g (Hypercube.flip x i) - g x)

/--
Ordered-edge Dirichlet numerator.

This sums over every vertex and every coordinate direction, so each undirected
hypercube edge appears twice.
-/
def orderedDirichletNumerator {n : Nat}
    (f g : WalshFourier.Function n) : Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).flatMap
      (fun x =>
        (List.finRange n).map
          (fun i => WalshFourier.edgeDifferenceProduct f g x i)))

/--
Unordered-edge Dirichlet numerator.

This uses the orientation from `false` to `true` in the flipped coordinate, so
each undirected hypercube edge appears once.
-/
def unorderedDirichletNumerator {n : Nat}
    (f g : WalshFourier.Function n) : Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).flatMap
      (fun x =>
        (List.finRange n).map
          (fun i =>
            if x i = false then
              WalshFourier.edgeDifferenceProduct f g x i
            else
              0)))

/-- Available finite Dirichlet-form normalization conventions. -/
inductive DirichletConvention where
  | orderedEdges
  | unorderedEdges
deriving Repr, DecidableEq

/-- Select the Dirichlet numerator associated to a convention. -/
def dirichletNumerator {n : Nat}
    (convention : DirichletConvention)
    (f g : WalshFourier.Function n) : Int :=
  match convention with
  | .orderedEdges => WalshFourier.orderedDirichletNumerator f g
  | .unorderedEdges => WalshFourier.unorderedDirichletNumerator f g

@[simp] theorem dirichletNumerator_orderedEdges {n : Nat}
    (f g : WalshFourier.Function n) :
    WalshFourier.dirichletNumerator .orderedEdges f g =
      WalshFourier.orderedDirichletNumerator f g := rfl

@[simp] theorem dirichletNumerator_unorderedEdges {n : Nat}
    (f g : WalshFourier.Function n) :
    WalshFourier.dirichletNumerator .unorderedEdges f g =
      WalshFourier.unorderedDirichletNumerator f g := rfl

/-- Ordered-edge energy is the ordered Dirichlet form on `f` against itself. -/
def orderedDirichletEnergyNumerator {n : Nat}
    (f : WalshFourier.Function n) : Int :=
  WalshFourier.orderedDirichletNumerator f f

/-- Unordered-edge energy is the unordered Dirichlet form on `f` against itself. -/
def unorderedDirichletEnergyNumerator {n : Nat}
    (f : WalshFourier.Function n) : Int :=
  WalshFourier.unorderedDirichletNumerator f f

@[simp] theorem orderedDirichletEnergy_eq_self {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.orderedDirichletEnergyNumerator f =
      WalshFourier.orderedDirichletNumerator f f := rfl

@[simp] theorem unorderedDirichletEnergy_eq_self {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.unorderedDirichletEnergyNumerator f =
      WalshFourier.unorderedDirichletNumerator f f := rfl

end WalshFourier

end Boolean.Cube
```
