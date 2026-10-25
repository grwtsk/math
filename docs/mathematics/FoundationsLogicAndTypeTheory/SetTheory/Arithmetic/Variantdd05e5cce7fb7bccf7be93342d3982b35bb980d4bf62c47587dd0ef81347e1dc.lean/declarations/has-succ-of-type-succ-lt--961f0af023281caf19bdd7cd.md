# has_succ_of_type_succ_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7911e57b-0136-e588-aa00-e2638bbdaeef",
  "kind": "theorem",
  "lexical_name": "has_succ_of_type_succ_lt",
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
  "slug": "has-succ-of-type-succ-lt--961f0af023281caf19bdd7cd",
  "source": {
    "blob": "c645c924592c1d359f7ffee102a85dda474aacf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 362,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961f0af023281caf19bdd7cd4d88e94c9348da1f255f97589e6c6a2cfbf1fc87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7911e57b-0136-e588-aa00-e2638bbdaeef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_succ_of_type_succ_lt {α} {r : α → α → Prop} [wo : IsWellOrder α r]
    (h : ∀ a < type r, succ a < type r) (x : α) : ∃ y, r x y := by
  use enum r (succ (typein r x)) (h _ (typein_lt_type r x))
  convert (enum_lt_enum (typein_lt_type r x)
    (h _ (typein_lt_type r x))).mpr (lt_succ _); rw [enum_typein]
#align ordinal.has_succ_of_type_succ_lt Ordinal.has_succ_of_type_succ_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c645c924592c1d359f7ffee102a85dda474aacf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
