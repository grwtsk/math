# induction_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1f788db-745c-0278-bb5f-b2cd2be40436",
  "kind": "lemma",
  "lexical_name": "induction_add",
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
  "slug": "induction-add--6eb7ca1d333306838ce2ab72",
  "source": {
    "blob": "457696b067384e7226aa4439d9e82f3e848249f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 698,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb7ca1d333306838ce2ab72d11c3a4c04250539aab68614cfc3d893e63edc3b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1f788db-745c-0278-bb5f-b2cd2be40436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 698–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction_add (i : ι) {p : ι → Prop}
    (h₀ : ∀ i, p i → p (P.reflectionPerm i i))
    (h₁ : ∀ i ∈ b.support, p i)
    (h₂ : ∀ i j k, P.root k = P.root i + P.root j → p i → j ∈ b.support → p k) :
    p i := by
  let := P.indexNeg
  rcases IsPos.or_neg b i with hi | hi
  · exact hi.induction_on_add h₁ h₂
  · suffices p (-i) by rw [← neg_neg i]; exact h₀ (-i) this
    exact hi.induction_on_add h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean#L698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457696b067384e7226aa4439d9e82f3e848249f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
