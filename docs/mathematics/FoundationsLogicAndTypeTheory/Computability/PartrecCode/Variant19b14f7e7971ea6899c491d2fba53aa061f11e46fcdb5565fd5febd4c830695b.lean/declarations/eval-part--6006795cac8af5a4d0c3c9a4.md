# eval_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62e91986-2d82-09e9-14b5-d5e3eb36ad8e",
  "kind": "theorem",
  "lexical_name": "eval_part",
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
  "slug": "eval-part--6006795cac8af5a4d0c3c9a4",
  "source": {
    "blob": "d1555850f895dc321c487421e9df6bc4780e2215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1175,
    "line": 1166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6006795cac8af5a4d0c3c9a48dd3c82db952d7d69b9fbc5f826eaaf2c722a5ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62e91986-2d82-09e9-14b5-d5e3eb36ad8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1166–1175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_part : Partrec₂ eval :=
  (Partrec.rfindOpt
    (evaln_prim.to_comp.comp ((Computable.snd.pair (fst.comp fst)).pair (snd.comp fst))).to₂).of_eq
    fun a => by simp [eval_eq_rfindOpt]
#align nat.partrec.code.eval_part Nat.Partrec.Code.eval_part

/-- Roger's fixed-point theorem: Any total, computable `f` has a fixed point: That is, under the
interpretation given by `Nat.Partrec.Code.eval`, there is a code `c` such that `c` and `f c` have
the same evaluation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean#L1166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1555850f895dc321c487421e9df6bc4780e2215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
