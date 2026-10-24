# observationCarrier_insert_ne_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81b2bf0d-9fe3-623a-4a13-7932007a1b47",
  "kind": "theorem",
  "lexical_name": "observationCarrier_insert_ne_iff",
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
  "slug": "observationcarrier-insert-ne-iff--be08c7d775749529434b4aba",
  "source": {
    "blob": "6acc1798075e15cffefc526642a7c3ec39291c70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variante71c20b10783b955cabc52114f47d07bbafb3396714939f399bed7d5e30bf6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be08c7d775749529434b4aba9c51e68710fdfd96fb93453caa343103d16ef0b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variante71c20b10783b955cabc52114f47d07bbafb3396714939f399bed7d5e30bf6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81b2bf0d-9fe3-623a-4a13-7932007a1b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observationCarrier_insert_ne_iff [DecidableEq Test]
    (obs : Test → Object → Value) (selected : Finset Test) (test : Test) (x y : Object)
    (oldEqual : observationCarrier obs selected x = observationCarrier obs selected y) :
    observationCarrier obs (insert test selected) x ≠
        observationCarrier obs (insert test selected) y ↔ obs test x ≠ obs test y := by
  constructor
  · intro newDifferent sameValue
    apply newDifferent
    apply (observationCarrier_eq_iff obs (insert test selected) x y).mpr
    intro observed member
    obtain rfl | oldMember := Finset.mem_insert.mp member
    · exact sameValue
    · exact (observationCarrier_eq_iff obs selected x y).mp oldEqual observed oldMember
  · intro different sameCarrier
    exact different ((observationCarrier_eq_iff obs (insert test selected) x y).mp
      sameCarrier test (Finset.mem_insert_self test selected))

/-- Target separation is exactly semantic descent through the retained observation tuple. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variante71c20b10783b955cabc52114f47d07bbafb3396714939f399bed7d5e30bf6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variante71c20b10783b955cabc52114f47d07bbafb3396714939f399bed7d5e30bf6cb.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6acc1798075e15cffefc526642a7c3ec39291c70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
