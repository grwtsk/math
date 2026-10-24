# canonicalTerminalAnchor_shift_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d4f2c09-ba0e-8be1-e884-17d5a758a3ea",
  "kind": "theorem",
  "lexical_name": "canonicalTerminalAnchor_shift_admissible",
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
  "slug": "canonicalterminalanchor-shift-admissible--811d04186dda9bb83fa5c6ce",
  "source": {
    "blob": "f9a4feff07ca6e25821a59b503815a128e030bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:811d04186dda9bb83fa5c6ce963c7acba2bd5e8c06e3a878474f0a94d2dc526b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d4f2c09-ba0e-8be1-e884-17d5a758a3ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalTerminalAnchor_shift_admissible
    {X : ℕ} (hX : 2 ≤ X) :
    (anchoredMobiusPair (2 * X)).h ∈
      canonicalFourFamilyShiftSet (2 * X)
        (canonicalFourFamilyOfAnchor (2 * X)) := by
  have ha : 0 < 2 * X := by omega
  have hshift : 0 < (anchoredMobiusPair (2 * X)).h :=
    (anchoredMobiusPair_shift_pos_iff_ge_three ha).2 (by omega)
  exact canonicalFourFamily_selected_shift_mem ha (le_refl _) hshift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a4feff07ca6e25821a59b503815a128e030bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
