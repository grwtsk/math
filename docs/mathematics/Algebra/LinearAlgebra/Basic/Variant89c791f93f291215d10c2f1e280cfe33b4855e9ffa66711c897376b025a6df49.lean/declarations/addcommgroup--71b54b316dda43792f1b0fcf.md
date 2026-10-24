# addCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cea1d4c0d8ac7197303711352b1fef095942cd9f68943ce82dc112f9902f3f61",
  "kind": "instance",
  "lexical_name": "addCommGroup",
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
  "slug": "addcommgroup--71b54b316dda43792f1b0fcf",
  "source": {
    "blob": "85081c27579d700be9047c196d3a8fa6a81a28a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1294,
    "line": 1280,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71b54b316dda43792f1b0fcf687a7373e48856df657a3d954a7e91ab5e9381ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cea1d4c0d8ac7197303711352b1fef095942cd9f68943ce82dc112f9902f3f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1280–1294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addCommGroup : AddCommGroup (M ⊗[R] N) :=
  { TensorProduct.addCommMonoid with
    neg := Neg.neg
    sub := _
    sub_eq_add_neg := fun _ _ => rfl
    neg_add_cancel := fun x => TensorProduct.neg_add_cancel x
    zsmul := fun n v => n • v
    zsmul_zero' := by simp [TensorProduct.zero_smul]
    zsmul_succ' := by simp [add_comm, TensorProduct.one_smul, TensorProduct.add_smul]
    zsmul_neg' := fun n x => by
      change (-n.succ : ℤ) • x = -(((n : ℤ) + 1) • x)
      rw [← zero_add (_ • x), ← TensorProduct.neg_add_cancel ((n.succ : ℤ) • x), add_assoc,
        ← add_smul, ← sub_eq_add_neg, sub_self, zero_smul, add_zero]
      rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean#L1280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85081c27579d700be9047c196d3a8fa6a81a28a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
