# Module.stabilizer_units_eq_bot_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4894b001-4ef7-47b1-8da4-76a401b01420",
  "kind": "lemma",
  "lexical_name": "Module.stabilizer_units_eq_bot_of_ne_zero",
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
  "slug": "module-stabilizer-units-eq-bot-of-ne-zero--179949ae10c0894b4494d088",
  "source": {
    "blob": "45a245cf5a9ca61c1961b7d9febaa959ca0aa21f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 398,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:179949ae10c0894b4494d088a154b922ff30f026f07fb5330e6054b858fe3e95",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4894b001-4ef7-47b1-8da4-76a401b01420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.stabilizer_units_eq_bot_of_ne_zero {x : M} (hx : x ≠ 0) :
    MulAction.stabilizer Rˣ x = ⊥ := by
  rw [eq_bot_iff]
  intro g (hg : g.val • x = x)
  ext
  rw [← sub_eq_zero, ← smul_eq_zero_iff_left hx, Units.val_one, sub_smul, hg, one_smul, sub_self]

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a245cf5a9ca61c1961b7d9febaa959ca0aa21f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
