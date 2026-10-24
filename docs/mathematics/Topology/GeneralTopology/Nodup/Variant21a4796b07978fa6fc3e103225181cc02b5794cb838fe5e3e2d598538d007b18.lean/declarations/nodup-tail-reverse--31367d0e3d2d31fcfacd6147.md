# nodup_tail_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a03b8926-14ef-66b5-d837-09c01aa94d8e",
  "kind": "lemma",
  "lexical_name": "nodup_tail_reverse",
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
  "slug": "nodup-tail-reverse--31367d0e3d2d31fcfacd6147",
  "source": {
    "blob": "09e4cfc6cb3bbf32e7adc01457da554a8e69a912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31367d0e3d2d31fcfacd61471bb6a4835c035f6d457b068b5dd36169751e032d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a03b8926-14ef-66b5-d837-09c01aa94d8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nodup_tail_reverse (l : List α) (h : l[0]? = l.getLast?) :
    Nodup l.reverse.tail ↔ Nodup l.tail := by
  induction l with
  | nil => simp
  | cons a l ih =>
    by_cases hl : l = []
    · simp_all
    · simp_all only [List.tail_reverse, List.nodup_reverse,
        List.dropLast_cons_of_ne_nil hl, List.tail_cons]
      simp only [length_cons, Nat.zero_lt_succ, getElem?_eq_getElem,
        Nat.add_one_sub_one, Nat.lt_add_one, Option.some.injEq, List.getElem_cons,
        show l.length ≠ 0 by aesop, ↓reduceDIte, getLast?_eq_getElem?] at h
      rw [h,
        show l.Nodup = (l.dropLast ++ [l.getLast hl]).Nodup by
          simp [List.dropLast_eq_take],
        List.nodup_append_comm]
      simp [List.getLast_eq_getElem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e4cfc6cb3bbf32e7adc01457da554a8e69a912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
