# bernstein_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23f991ae-8ad6-b956-f52e-5b4868d7da4e",
  "kind": "theorem",
  "lexical_name": "bernstein_zero",
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
  "slug": "bernstein-zero--4c7d446e6b79e541814b9e9a",
  "source": {
    "blob": "6a2abaae9e6f9cff2ed0858fce97fcd4b5ebaf56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 27,
    "path": "GRWTSK/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c7d446e6b79e541814b9e9afe3c24cb15a74f26de2e3543e55b8930f67df625",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23f991ae-8ad6-b956-f52e-5b4868d7da4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem bernstein_zero (degree : ℕ) (i : Fin (degree + 1)) :
    bernstein degree i 0 = if i = 0 then 1 else 0 := by
  by_cases hi : i = 0
  · subst i
    simp [bernstein]
  · have hval : i.1 ≠ 0 := fun h => hi (Fin.ext h)
    simp [bernstein, hi, hval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a2abaae9e6f9cff2ed0858fce97fcd4b5ebaf56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
