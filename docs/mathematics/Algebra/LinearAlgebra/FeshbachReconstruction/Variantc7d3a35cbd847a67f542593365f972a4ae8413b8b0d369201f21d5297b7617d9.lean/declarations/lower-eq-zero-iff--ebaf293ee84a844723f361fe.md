# lower_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca9ec322-15ef-d5af-a81a-661f91e67c02",
  "kind": "theorem",
  "lexical_name": "lower_eq_zero_iff",
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
  "slug": "lower-eq-zero-iff--ebaf293ee84a844723f361fe",
  "source": {
    "blob": "72a01fb15a7aa88b8438df2fc023b2b34e5f0ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebaf293ee84a844723f361fe1d514cfed870a6cc572df2b03c40f27f8bd315c6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca9ec322-15ef-d5af-a81a-661f91e67c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_eq_zero_iff (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B]
    (x : ι → R) (y : κ → R) :
    C.mulVec x + B.mulVec y = 0 ↔ y = -(⅟B).mulVec (C.mulVec x) := by
  constructor
  · intro h
    have h' := congrArg ((⅟B).mulVec) h
    simp only [mulVec_add, mulVec_mulVec, invOf_mul_self, one_mulVec, mulVec_zero] at h'
    exact eq_neg_of_add_eq_zero_right (by simpa only [← mulVec_mulVec] using h')
  · intro h
    rw [h, mulVec_neg, mulVec_mulVec, mul_invOf_self, one_mulVec, add_neg_cancel]

/-- Applying the full packet to a reconstructed vector gives `(Fx, 0)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a01fb15a7aa88b8438df2fc023b2b34e5f0ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
