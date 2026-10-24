# cubicChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ae6c2138d3c151735d12d8d1b4fe07b14b2d0e83b8a5b3dfdffb7c229a8f77d",
  "kind": "def",
  "lexical_name": "cubicChar",
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
  "slug": "cubicchar--b84a278566d4c7f84b445c5b",
  "source": {
    "blob": "01a3bb2079fcdfa7035c6cd1bf270c1ac3b3a33d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b84a278566d4c7f84b445c5b7c94b2d6465d463552f5b1c03940c968a9d7e0af",
  "verification": {
    "reference": "docs/verification/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ae6c2138d3c151735d12d8d1b4fe07b14b2d0e83b8a5b3dfdffb7c229a8f77d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cubicChar (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) : MulChar (O ⧸ P) O := by
  let m := (Fintype.card (O ⧸ P) - 1) / 3
  have hq : Fintype.card (O ⧸ P) - 1 = m * 3 :=
    (Nat.div_mul_cancel (by simpa only [Nat.card_eq_fintype_card] using
      card_sub_one_div_three P hgood)).symm
  exact residueChar P hgood m hq

/-- The zero case uses the actual strictly positive quotient exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a3bb2079fcdfa7035c6cd1bf270c1ac3b3a33d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
