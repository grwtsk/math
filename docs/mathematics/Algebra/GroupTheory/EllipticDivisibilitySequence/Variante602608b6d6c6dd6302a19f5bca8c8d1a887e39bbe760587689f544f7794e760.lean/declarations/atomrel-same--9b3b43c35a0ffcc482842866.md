# atomRel_same₁₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e52f166-a6ae-88f2-f784-f2a9b879a84e",
  "kind": "lemma",
  "lexical_name": "atomRel_same₁₃",
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
  "slug": "atomrel-same--9b3b43c35a0ffcc482842866",
  "source": {
    "blob": "55bbcc13176509aad0892de50f1c9877b744dd64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 174,
    "path": "GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variante602608b6d6c6dd6302a19f5bca8c8d1a887e39bbe760587689f544f7794e760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b3b43c35a0ffcc48284286608e803336c4ee84bf2e05d1bf1aa3885e40919c6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EllipticDivisibilitySequence/Variante602608b6d6c6dd6302a19f5bca8c8d1a887e39bbe760587689f544f7794e760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e52f166-a6ae-88f2-f784-f2a9b879a84e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma atomRel_same₁₃ (neg : W.Odd) (a b c : ℤ) : atomRel W a b a c = W a * W 0 * atom W c b := by
  grind only [atomRel, atom_same, neg_atom]

variable {W} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EllipticDivisibilitySequence/Variante602608b6d6c6dd6302a19f5bca8c8d1a887e39bbe760587689f544f7794e760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variante602608b6d6c6dd6302a19f5bca8c8d1a887e39bbe760587689f544f7794e760.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55bbcc13176509aad0892de50f1c9877b744dd64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
