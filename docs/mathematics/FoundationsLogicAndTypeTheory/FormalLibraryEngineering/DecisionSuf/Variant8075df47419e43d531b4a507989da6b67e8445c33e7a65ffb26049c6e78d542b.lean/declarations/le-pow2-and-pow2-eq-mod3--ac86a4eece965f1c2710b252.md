# le_pow2_and_pow2_eq_mod3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b134197b-fbc0-fd16-9bbf-ace56f15688c",
  "kind": "theorem",
  "lexical_name": "le_pow2_and_pow2_eq_mod3",
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
  "slug": "le-pow2-and-pow2-eq-mod3--ac86a4eece965f1c2710b252",
  "source": {
    "blob": "3e20c6b7c3f9326d1ba00fe3472ea384bb45213c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac86a4eece965f1c2710b252c77bfd9b3c4e6424168d062e97ee2179ee746f96",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b134197b-fbc0-fd16-9bbf-ace56f15688c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_pow2_and_pow2_eq_mod3 (a : ℕ) (h : a % 3 = 1 ∨ a % 3 = 2) :
    ∃ m : ℕ, a ≤ 2 ^ m ∧ 2 ^ m % 3 = a % 3 := by
  cases' le_pow2_and_pow2_eq_mod3' (a % 3) (a / 3) h with m hm
  use m
  constructor
  · convert hm.1; exact (mod_add_div a 3).symm
  · rw [hm.2, mod_mod _ 3]
#align miu.le_pow2_and_pow2_eq_mod3 Miu.le_pow2_and_pow2_eq_mod3

end Arithmetic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e20c6b7c3f9326d1ba00fe3472ea384bb45213c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
