# localRow?_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54489775-35bc-a60e-7ac3-9fea2a389c5a",
  "kind": "theorem",
  "lexical_name": "localRow?_eq_some_iff",
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
  "slug": "localrow-eq-some-iff--ae581e25950f5c2682ab906a",
  "source": {
    "blob": "d76fe10896d75f781165f4050ce66394c28e1a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae581e25950f5c2682ab906a11d6e449c2b66f93f6eb25ce71b1d6b83f0c40b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54489775-35bc-a60e-7ac3-9fea2a389c5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localRow?_eq_some_iff
    (L : MatrixLocus m n) (i : Fin m) (a : Fin L.rows.card) :
    L.localRow? i = some a ↔ L.rowEmbed a = i := by
  constructor
  · intro h
    by_cases hi : i ∈ L.rows
    · simp only [localRow?, hi, ↓reduceDIte, Option.some.injEq] at h
      subst a
      exact congrArg Subtype.val
        ((L.rows.orderIsoOfFin rfl).apply_symm_apply ⟨i, hi⟩)
    · simp [localRow?, hi] at h
  · intro h
    subst i
    exact L.localRow?_rowEmbed a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d76fe10896d75f781165f4050ce66394c28e1a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
