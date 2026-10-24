# indefiniteOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed1681bf69dd67ee0a812732ae90c06ebb4627ce26a3184bd65ffaba4ac7cc38",
  "kind": "def",
  "lexical_name": "indefiniteOperator",
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
  "slug": "indefiniteoperator--fd65773ae6de7432caaf1832",
  "source": {
    "blob": "bab8452ee55b9af5bd5413216ec59866ce493968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd65773ae6de7432caaf1832830984e0cdf70d153a0e0455b0b9c111e6818ca7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed1681bf69dd67ee0a812732ae90c06ebb4627ce26a3184bd65ffaba4ac7cc38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def indefiniteOperator : (ℝ × ℝ) →ₗ[ℝ] (ℝ × ℝ) where
  toFun x := (-x.1, x.2)
  map_add' x y := by
    apply Prod.ext
    · exact neg_add x.1 y.1
    · rfl
  map_smul' a x := by ext <;> simp

/-- Both diagonal packets have the same equation kernel, but opposite energy
signs on the first coordinate. Equality closure alone cannot establish sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab8452ee55b9af5bd5413216ec59866ce493968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
