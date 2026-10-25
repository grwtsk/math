# isNormal_iff_lt_succ_and_blsub_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a2518d1710bbe13bf4825e2ff3f19df97a57627",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 937,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a090c944-f52c-4c4a-2285-34fad7d45ab0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:740e4b4d-c59c-cbac-a181-cca1eb364973",
  "kind": "theorem",
  "lexical_name": "isNormal_iff_lt_succ_and_blsub_eq",
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
  "slug": "isnormal-iff-lt-succ-and-blsub-eq--1f792eb4263d41d1f7307d55",
  "source": {
    "blob": "9a2518d1710bbe13bf4825e2ff3f19df97a57627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 937,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f792eb4263d41d1f7307d55730fdf6baf37ac32f6156dcbe7b8ea7a08463112",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:740e4b4d-c59c-cbac-a181-cca1eb364973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 937–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNormal_iff_lt_succ_and_blsub_eq {f : Ordinal.{u} → Ordinal.{max u v}} :
    IsNormal f ↔ (∀ a, f a < f (succ a)) ∧
      ∀ o, IsLimit o → (blsub.{_, v} o fun x _ => f x) = f o := by
  rw [isNormal_iff_lt_succ_and_bsup_eq.{u, v}, and_congr_right_iff]
  intro h
  constructor <;> intro H o ho <;> have := H o ho <;>
    rwa [← bsup_eq_blsub_of_lt_succ_limit ho fun a _ => h a] at *

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean#L937).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2518d1710bbe13bf4825e2ff3f19df97a57627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
