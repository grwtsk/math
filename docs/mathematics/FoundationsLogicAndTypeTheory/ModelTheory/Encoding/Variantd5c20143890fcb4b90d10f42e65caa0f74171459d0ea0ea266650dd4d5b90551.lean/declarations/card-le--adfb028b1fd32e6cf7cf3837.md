# card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a46e02d2a0032cd7024f30e5c97291c64e4d43e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b232976c-dd19-93f9-0642-7abb84cf5ce8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6de7f12-49b1-5fe6-7113-b189a75148d8",
  "kind": "theorem",
  "lexical_name": "card_le",
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
  "slug": "card-le--adfb028b1fd32e6cf7cf3837",
  "source": {
    "blob": "a46e02d2a0032cd7024f30e5c97291c64e4d43e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adfb028b1fd32e6cf7cf3837979129b515458a98eb5e52e3989daa35c7d09580",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6de7f12-49b1-5fe6-7113-b189a75148d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le : #(Σ n, L.BoundedFormula α n) ≤
    max ℵ₀ (Cardinal.lift.{max u v} #α + Cardinal.lift.{u'} L.card) := by
  refine lift_le.1 (BoundedFormula.encoding.card_le_card_list.trans ?_)
  rw [mk_list_eq_max_mk_aleph0, lift_max, lift_aleph0, lift_max, lift_aleph0, max_le_iff]
  refine ⟨?_, le_max_left _ _⟩
  rw [mk_sum, Term.card_sigma, mk_sum, ← add_eq_max le_rfl, mk_sum, mk_nat]
  simp only [lift_add, lift_lift, lift_aleph0]
  rw [← add_assoc, add_comm, ← add_assoc, ← add_assoc, aleph0_add_aleph0, add_assoc,
    add_eq_max le_rfl, add_assoc, card, Symbols, mk_sum, lift_add, lift_lift, lift_lift]

section Countable

variable [Countable α] [Countable L.Symbols]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46e02d2a0032cd7024f30e5c97291c64e4d43e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
