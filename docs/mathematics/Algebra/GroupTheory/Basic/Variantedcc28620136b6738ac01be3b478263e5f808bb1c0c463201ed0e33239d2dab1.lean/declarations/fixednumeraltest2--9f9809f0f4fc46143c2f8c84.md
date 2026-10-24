# fixedNumeralTest2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:540e9deb9c626a822c5a4d9538ec75f50d5dac76c6f12420ec3a9c0345df723d",
  "kind": "def",
  "lexical_name": "fixedNumeralTest2",
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
  "slug": "fixednumeraltest2--9f9809f0f4fc46143c2f8c84",
  "source": {
    "blob": "6f3bf1be316a2ff1e99a6172560489dfa739fbb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 276,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f9809f0f4fc46143c2f8c8402db2ab07558e2f63e91b1ef2f5bb3e37c8d2594",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:540e9deb9c626a822c5a4d9538ec75f50d5dac76c6f12420ec3a9c0345df723d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixedNumeralTest2 {α} [One α] :=
  @OfNat.ofNat ((fun _ => ℕ) (1 : α)) 1 (@One.toOfNat1 ((fun _ => ℕ) (1 : α)) _)

/-! Test the namespace bug (https://github.com/leanprover-community/mathlib4/pull/8733).
This code should *not* generate a lemma
  `add_some_def.in_namespace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f3bf1be316a2ff1e99a6172560489dfa739fbb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
