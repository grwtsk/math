# pairwise_iff_forall_infix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e75626-498b-55a5-2d27-581fd81b5cd8",
  "kind": "theorem",
  "lexical_name": "pairwise_iff_forall_infix",
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
  "slug": "pairwise-iff-forall-infix--98632ccf3748a65cb3abffc2",
  "source": {
    "blob": "8df88938af2e3658fcd6f38df2ae2861eca75906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98632ccf3748a65cb3abffc28167d48b1ab36a4e44694a8f271f3eb12c347355",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e75626-498b-55a5-2d27-581fd81b5cd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwise_iff_forall_infix {α : Type*} {l : List α} {R : α → α → Prop} :
    l.Pairwise R ↔
      ∀ l', (h : 1 < l'.length) → l' <:+: l → R (l'.head <| by grind) (l'.getLast <| by grind) := by
  refine l.pairwise_iff_getElem.trans ⟨fun h l' hne ⟨l₁, l₂, hl⟩ ↦ ?_, fun h i j hi hj hij ↦ ?_⟩
  · grind [getElem_append_left', getElem_append_right']
  · grind [h _ _ <| List.drop_suffix i _ |>.isInfix.trans <| l.take_prefix (j + 1) |>.isInfix]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df88938af2e3658fcd6f38df2ae2861eca75906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
