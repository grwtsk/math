# mul_gaussSum_inv_eq_gaussSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adc40ad0-676f-5697-4758-7f6a99fc7bf7",
  "kind": "lemma",
  "lexical_name": "mul_gaussSum_inv_eq_gaussSum",
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
  "slug": "mul-gausssum-inv-eq-gausssum--7e8babc78f4ecf5f0182190d",
  "source": {
    "blob": "f6bbab1eefc328d0b5abf3ae1937fd8d3cc693e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 174,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e8babc78f4ecf5f0182190d20d343032eedccb88d298d102aa83ed39f580bf8",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adc40ad0-676f-5697-4758-7f6a99fc7bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_gaussSum_inv_eq_gaussSum (χ : MulChar R R') (ψ : AddChar R R') :
    χ (-1) * gaussSum χ ψ⁻¹ = gaussSum χ ψ := by
  rw [ψ.inv_mulShift, ← Units.coe_neg_one]
  exact gaussSum_mulShift χ ψ (-1)

variable [IsDomain R'] --  From now on, `R'` needs to be a domain.

-- A helper lemma for `gaussSum_mul_gaussSum_eq_card` below
-- Is this useful enough in other contexts to be public?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bbab1eefc328d0b5abf3ae1937fd8d3cc693e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
