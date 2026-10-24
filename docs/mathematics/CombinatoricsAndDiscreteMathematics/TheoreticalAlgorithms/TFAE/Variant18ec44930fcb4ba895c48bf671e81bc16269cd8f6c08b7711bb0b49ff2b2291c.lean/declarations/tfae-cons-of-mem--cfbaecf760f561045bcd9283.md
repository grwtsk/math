# tfae_cons_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68172a94-1d65-1e06-ada0-e4a4784830a3",
  "kind": "theorem",
  "lexical_name": "tfae_cons_of_mem",
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
  "slug": "tfae-cons-of-mem--cfbaecf760f561045bcd9283",
  "source": {
    "blob": "74fe8dac226dcb161c28ac1f7889999df8bbbce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfbaecf760f561045bcd928382d374bbe7fd8ea0129af3464ef5668241c73eb9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68172a94-1d65-1e06-ada0-e4a4784830a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tfae_cons_of_mem {a b} {l : List Prop} (h : b ∈ l) : TFAE (a :: l) ↔ (a ↔ b) ∧ TFAE l :=
  ⟨fun H => ⟨H a (by simp) b (Mem.tail a h),
    fun _ hp _ hq => H _ (Mem.tail a hp) _ (Mem.tail a hq)⟩,
      by
        rintro ⟨ab, H⟩ p (_ | ⟨_, hp⟩) q (_ | ⟨_, hq⟩)
        · rfl
        · exact ab.trans (H _ h _ hq)
        · exact (ab.trans (H _ h _ hp)).symm
        · exact H _ hp _ hq⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74fe8dac226dcb161c28ac1f7889999df8bbbce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
