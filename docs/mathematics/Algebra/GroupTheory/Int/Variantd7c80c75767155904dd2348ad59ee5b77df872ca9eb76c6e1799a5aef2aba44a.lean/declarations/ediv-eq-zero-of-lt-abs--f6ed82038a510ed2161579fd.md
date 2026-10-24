# ediv_eq_zero_of_lt_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:173997d2-2634-3fad-6449-8d646ed72c17",
  "kind": "theorem",
  "lexical_name": "ediv_eq_zero_of_lt_abs",
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
  "slug": "ediv-eq-zero-of-lt-abs--f6ed82038a510ed2161579fd",
  "source": {
    "blob": "4c686c1db9e7870d77f78630e7f0f5e8326a7c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ed82038a510ed2161579fd7f6a02a870459b6b8079c0bda46838f62566d65a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:173997d2-2634-3fad-6449-8d646ed72c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediv_eq_zero_of_lt_abs {a b : ℤ} (H1 : 0 ≤ a) (H2 : a < |b|) : a / b = 0 :=
  match b, |b|, abs_eq_natAbs b, H2 with
  | (n : ℕ), _, rfl, H2 => ediv_eq_zero_of_lt H1 H2
  | -[n+1], _, rfl, H2 => neg_injective <| by rw [← Int.ediv_neg]; exact ediv_eq_zero_of_lt H1 H2

/-! #### mod -/

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c686c1db9e7870d77f78630e7f0f5e8326a7c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
