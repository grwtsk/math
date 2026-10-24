# gcd_greatest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4c364ea6b8f2a1d85abbcc355591643d71e5c13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7991972d-6506-6154-0197-102ff33d20ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf9e3c4e-6efc-1be8-5fad-190027a35420",
  "kind": "theorem",
  "lexical_name": "gcd_greatest",
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
  "slug": "gcd-greatest--caa40b6493a44d75371d63e9",
  "source": {
    "blob": "d4c364ea6b8f2a1d85abbcc355591643d71e5c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 27,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caa40b6493a44d75371d63e98dcccf86b22fa8f8e4cdd9126430595f67d34af3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf9e3c4e-6efc-1be8-5fad-190027a35420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_greatest {a b d : ℕ} (hda : d ∣ a) (hdb : d ∣ b) (hd : ∀ e : ℕ, e ∣ a → e ∣ b → e ∣ d) :
    d = a.gcd b :=
  (dvd_antisymm (hd _ (gcd_dvd_left a b) (gcd_dvd_right a b)) (dvd_gcd hda hdb)).symm
#align nat.gcd_greatest Nat.gcd_greatest

-- Lemmas where one argument consists of addition of a multiple of the other
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4c364ea6b8f2a1d85abbcc355591643d71e5c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
