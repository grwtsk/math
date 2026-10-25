# ofBoundedCorrection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5f718abd36173d472748ba585e7ae84b74f5e98a234ec14c4c2f6028c568995",
  "kind": "def",
  "lexical_name": "ofBoundedCorrection",
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
  "slug": "ofboundedcorrection--a83c18348043597ad898d3e7",
  "source": {
    "blob": "1dfaf326362298291b14e2dcd917643fa5189d8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a83c18348043597ad898d3e716e280b41c89e49564afbfffd0bbe1d5010d38df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5f718abd36173d472748ba585e7ae84b74f5e98a234ec14c4c2f6028c568995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofBoundedCorrection {f g : ℝ → ℝ} (c : ℝ) (hc : 0 < c)
    (e : ℝ → ℝ) (he : UniformTailUpperBound (fun A ↦ |e A|))
    (h : ∀ A : ℝ, g A = c * f A + e A) : AffineTailAdapter f g := by
  classical
  let K := he.choose
  have hK : 0 ≤ K := he.choose_spec.1
  let R := he.choose_spec.2.choose
  have hR : 1 ≤ R := he.choose_spec.2.choose_spec.1
  have hbound : ∀ A : ℝ, R ≤ A → |e A| ≤ K := he.choose_spec.2.choose_spec.2
  exact {
    scale := c
    scale_pos := hc
    error := K
    error_nonneg := hK
    threshold := R
    threshold_ge_one := hR
    error_bound := by intro A hA; simpa [h A] using hbound A hA }

end AffineTailAdapter

/-- Existence of explicit affine tail data, rather than an assumed bound equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dfaf326362298291b14e2dcd917643fa5189d8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
