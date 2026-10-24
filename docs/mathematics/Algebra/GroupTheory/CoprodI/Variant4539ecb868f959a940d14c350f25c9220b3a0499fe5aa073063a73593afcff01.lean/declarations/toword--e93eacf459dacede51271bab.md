# toWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bed46ca4dc1671c5edc66f85741d0db07e987d650158ebd0d4b74c89ac679167",
  "kind": "def",
  "lexical_name": "toWord",
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
  "slug": "toword--e93eacf459dacede51271bab",
  "source": {
    "blob": "c69882ab06ca0ce031e836729c460fda2cea334e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 562,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e93eacf459dacede51271babbafe4a13650fcc2103043a84897a02fe2e4503fe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bed46ca4dc1671c5edc66f85741d0db07e987d650158ebd0d4b74c89ac679167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toWord {i j} (w : NeWord M i j) : Word M
    where
  toList := w.toList
  ne_one := by
    induction w
    · simpa only [toList, List.mem_singleton, ne_eq, forall_eq]
    · intro l h
      simp only [toList, List.mem_append] at h
      cases h <;> aesop
  chain_ne := by
    induction w
    · exact List.chain'_singleton _
    · refine List.Chain'.append (by assumption) (by assumption) ?_
      intro x hx y hy
      rw [toList_getLast?, Option.mem_some_iff] at hx
      rw [toList_head?, Option.mem_some_iff] at hy
      subst hx
      subst hy
      assumption
#align free_product.neword.to_word Monoid.CoprodI.NeWord.toWord

/-- Every nonempty `Word M` can be constructed as a `NeWord M i j` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c69882ab06ca0ce031e836729c460fda2cea334e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
