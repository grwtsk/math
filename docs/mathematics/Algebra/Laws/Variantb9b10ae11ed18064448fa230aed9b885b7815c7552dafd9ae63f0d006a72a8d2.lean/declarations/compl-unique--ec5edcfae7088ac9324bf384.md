# compl_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7290873f-ff81-f773-6e21-df7a2537eb7c",
  "kind": "theorem",
  "lexical_name": "compl_unique",
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
  "slug": "compl-unique--ec5edcfae7088ac9324bf384",
  "source": {
    "blob": "3b61a07a1817700190cb685e61fee3f1cdd578c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 142,
    "path": "GRWTSK/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec5edcfae7088ac9324bf384b34ac1b6e9743c8bff51ee20c2ea86e302bbb87b",
  "verification": {
    "reference": "docs/verification/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7290873f-ff81-f773-6e21-df7a2537eb7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compl_unique (a b : B)
    (hJoin : join a b = top)
    (hMeet : meet a b = bot) :
    b = compl a := by
  have hb : b = meet b (compl a) := by
    calc
      b = meet b top := (meet_top b).symm
      _ = meet b (join a (compl a)) := by
        rw [← join_compl a]
      _ = join (meet b a) (meet b (compl a)) :=
        meet_join_distrib b a (compl a)
      _ = join bot (meet b (compl a)) := by
        rw [meet_comm b a, hMeet]
      _ = meet b (compl a) :=
        bot_join (meet b (compl a))
  have hc : compl a = meet b (compl a) := by
    calc
      compl a = meet top (compl a) := (top_meet (compl a)).symm
      _ = meet (join a b) (compl a) := by
        rw [← hJoin]
      _ = meet (compl a) (join a b) :=
        meet_comm (join a b) (compl a)
      _ = join (meet (compl a) a) (meet (compl a) b) :=
        meet_join_distrib (compl a) a b
      _ = join bot (meet (compl a) b) := by
        rw [compl_meet a]
      _ = meet (compl a) b :=
        bot_join (meet (compl a) b)
      _ = meet b (compl a) :=
        meet_comm (compl a) b
  exact hb.trans hc.symm

/-- Involution: `¬¬a = a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b61a07a1817700190cb685e61fee3f1cdd578c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
