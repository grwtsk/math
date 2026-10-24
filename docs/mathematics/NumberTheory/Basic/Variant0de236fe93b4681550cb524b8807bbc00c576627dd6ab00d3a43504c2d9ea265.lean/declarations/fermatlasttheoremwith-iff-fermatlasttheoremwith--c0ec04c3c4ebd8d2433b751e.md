# fermatLastTheoremWith'_iff_fermatLastTheoremWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54555222-ba16-5101-1884-4d6d9c499fcc",
  "kind": "lemma",
  "lexical_name": "fermatLastTheoremWith'_iff_fermatLastTheoremWith",
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
  "slug": "fermatlasttheoremwith-iff-fermatlasttheoremwith--c0ec04c3c4ebd8d2433b751e",
  "source": {
    "blob": "7cb56c5e45d29b9a2b49508ddcf8fa15607a264a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 196,
    "path": "GRWTSK/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0ec04c3c4ebd8d2433b751e6db71acaec175253f1e80adbb0eb514d79e424be",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54555222-ba16-5101-1884-4d6d9c499fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fermatLastTheoremWith'_iff_fermatLastTheoremWith {R : Type*} [CommSemiring R] [IsDomain R]
    {n : ℕ} (hn : ∀ a b c : R, IsUnit a → IsUnit b → IsUnit c → a ^ n + b ^ n ≠ c ^ n) :
    FermatLastTheoremWith' R n ↔ FermatLastTheoremWith R n :=
  Iff.intro (fun h ↦ h.fermatLastTheoremWith hn) (fun h ↦ h.fermatLastTheoremWith')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cb56c5e45d29b9a2b49508ddcf8fa15607a264a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
