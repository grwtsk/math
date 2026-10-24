# instLinearOrderTropical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6fb31203b2f45056459008e901461c6c10272e17ad0131238961446a66b5e53",
  "kind": "instance",
  "lexical_name": "instLinearOrderTropical",
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
  "slug": "instlinearordertropical--104031de7b0ec8b4996524b8",
  "source": {
    "blob": "22b8fb97bfc19cccf1ffa3db889e4a47fb9a23a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 247,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:104031de7b0ec8b4996524b8eab7f13ca0df004246b5a7e21eaf3f6c6a96988c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6fb31203b2f45056459008e901461c6c10272e17ad0131238961446a66b5e53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLinearOrderTropical : LinearOrder (Tropical R) :=
  { instPartialOrderTropical with
    le_total := fun a b => le_total (untrop a) (untrop b)
    toDecidableLE := Tropical.decidableLE
    toDecidableEq := Tropical.instDecidableEq
    toDecidableLT := Tropical.decidableLT
    max := fun a b => trop (max (untrop a) (untrop b))
    max_def := fun a b => untrop_injective (by
      simp only [max_def, untrop_le_iff, untrop_trop]; split_ifs <;> simp)
    min := (· + ·)
    min_def := fun a b => untrop_injective (by
      simp only [untrop_add, min_def, untrop_le_iff]; split_ifs <;> simp) }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b8fb97bfc19cccf1ffa3db889e4a47fb9a23a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
