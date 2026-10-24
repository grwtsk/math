# restrictNonposSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bb806a6d01062bf746446b8ea0c03bd42515e6eca30f29b62f10f27eb398111",
  "kind": "def",
  "lexical_name": "restrictNonposSeq",
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
  "slug": "restrictnonposseq--be10fd53628b739baa19edbc",
  "source": {
    "blob": "d35ce7228c562473fe663a5734df636fd62216c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 173,
    "path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be10fd53628b739baa19edbccb0d64b4b3028e30d45480879dde481ab107a1f0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bb806a6d01062bf746446b8ea0c03bd42515e6eca30f29b62f10f27eb398111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def restrictNonposSeq (s : SignedMeasure α) (i : Set α) : ℕ → Set α
  | 0 => someExistsOneDivLT s (i \ ∅) -- I used `i \ ∅` instead of `i` to simplify some proofs
  | n + 1 =>
    someExistsOneDivLT s
      (i \
        ⋃ (k) (H : k ≤ n),
          have : k < n + 1 := Nat.lt_succ_iff.mpr H
          restrictNonposSeq s i k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d35ce7228c562473fe663a5734df636fd62216c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
