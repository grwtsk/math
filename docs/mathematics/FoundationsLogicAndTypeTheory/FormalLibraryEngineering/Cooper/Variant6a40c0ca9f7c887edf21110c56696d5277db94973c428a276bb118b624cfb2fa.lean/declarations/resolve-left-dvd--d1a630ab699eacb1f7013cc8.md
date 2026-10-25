# resolve_left_dvd₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15f49a11fe4fadfbd74f08060ae8ac163ae44303",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db688219-9f60-799d-14cb-4447bd044079",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6808b8ec-ae92-d855-a79d-41aa91ae924a",
  "kind": "theorem",
  "lexical_name": "resolve_left_dvd₂",
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
  "slug": "resolve-left-dvd--d1a630ab699eacb1f7013cc8",
  "source": {
    "blob": "15f49a11fe4fadfbd74f08060ae8ac163ae44303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1a630ab699eacb1f7013cc807e520c4c0c1bf17288a2eed7835543dda70e9d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6808b8ec-ae92-d855-a79d-41aa91ae924a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolve_left_dvd₂ (a c d p x : Int)
    (h₁ : p ≤ a * x) (h₃ : d ∣ c * x + s) :
    a * d ∣ c * resolve_left a c d p x + c * p + a * s := by
  simp only [h₁, resolve_left_eq, resolve_left']
  obtain ⟨k', w⟩ := add_of_le h₁
  simp only [Int.add_assoc, natCast_emod]
  apply dvd_mul_emod_add_of_dvd_mul_add
  · obtain ⟨z, r⟩ := h₃
    refine ⟨z, ?_⟩
    rw [Int.mul_assoc, ← r, Int.mul_add, Int.mul_comm c x, ← Int.mul_assoc, w, Int.add_mul,
      Int.mul_comm c, Int.mul_comm c, ← Int.add_assoc, Int.add_comm (p * c)]
  · exact Int.dvd_lcm_right ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15f49a11fe4fadfbd74f08060ae8ac163ae44303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
