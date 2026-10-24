# homologyIsoImageICyclesCompPOpcycles_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7550ae2f-d91c-eabc-0659-96064f8e812f",
  "kind": "lemma",
  "lexical_name": "homologyIsoImageICyclesCompPOpcycles_ι",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "homologyisoimageicyclescomppopcycles--aff77753d8478846c5d0f977",
  "source": {
    "blob": "49dd0b5a56181b8f03678694ef70ed4c6036af51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff77753d8478846c5d0f977b0b8acbdfe5eb714839fb80e18bf163d887ad952",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7550ae2f-d91c-eabc-0659-96064f8e812f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologyIsoImageICyclesCompPOpcycles_ι :
    S.homologyIsoImageICyclesCompPOpcycles.hom ≫ image.ι (S.iCycles ≫ S.pOpcycles) =
      S.homologyι :=
  image.isoStrongEpiMono_hom_comp_ι _ _ _

namespace HomologyData

namespace ofEpiMonoFactorisation

variable {kf : KernelFork S.g} {cc : CokernelCofork S.f}
  (hkf : IsLimit kf) (hcc : IsColimit cc)
  {H : C} {π : kf.pt ⟶ H} {ι : H ⟶ cc.pt}
  (fac : kf.ι ≫ cc.π = π ≫ ι)
  [Epi π] [Mono ι]

/-- Let `S` be a short complex in an abelian category. Let `kf` be a
limit kernel fork of `S.g` and `cc` a limit cokernel cofork of `S.f`.
Let `kf.pt ⟶ H ⟶ cc.pt` be an epi-mono factorization of `kf.ι ≫ cc.π : kf.pt ⟶ cc.pt`,
then `H` identifies to the image of `S.iCycles ≫ S.pOpcycles : S.cycles ⟶ S.opcycles`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49dd0b5a56181b8f03678694ef70ed4c6036af51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
