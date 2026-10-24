# of_ne_one_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b294aabf-2538-e1d1-19bd-b513b7e42a4d",
  "kind": "theorem",
  "lexical_name": "of_ne_one_ne_zero",
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
  "slug": "of-ne-one-ne-zero--4e64a69d21e23b23c3f1ed1a",
  "source": {
    "blob": "544f2915c5ba1c70d9a13de107b22ee5fa3eb755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e64a69d21e23b23c3f1ed1af9e6afff41844b1ff1f606bdfb0e8aa85a4a402f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b294aabf-2538-e1d1-19bd-b513b7e42a4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_ne_one_ne_zero {z : ℤ} (hp : p ≠ 1) (hz : z ≠ 0) :
    padicValInt p z =
      (multiplicity (p : ℤ) z).get
        (by
          apply multiplicity.finite_int_iff.2
          simp [hp, hz]) := by
  rw [padicValInt, padicValNat, dif_pos (And.intro hp (Int.natAbs_pos.mpr hz))]
  simp only [multiplicity.Int.natAbs p z]
#align padic_val_int.of_ne_one_ne_zero padicValInt.of_ne_one_ne_zero

/-- `padicValInt p 0` is `0` for any `p`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544f2915c5ba1c70d9a13de107b22ee5fa3eb755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
