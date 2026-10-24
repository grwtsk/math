# ofPosRatDn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c05defe9abaf02ae6b41f3889ba2ce2905cd3a2fb8891ebaefbbb666a332981",
  "kind": "def",
  "lexical_name": "ofPosRatDn",
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
  "slug": "ofposratdn--f5eda8c2e215e4c71911af26",
  "source": {
    "blob": "17d98019bfcac40d82ae9757197786149814a85f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5eda8c2e215e4c71911af2695e6d54e6adc68da0b3a204d9cface67f4b55dab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c05defe9abaf02ae6b41f3889ba2ce2905cd3a2fb8891ebaefbbb666a332981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def ofPosRatDn (n : ℕ+) (d : ℕ+) : Float × Bool := by
  let e₁ : ℤ := n.1.size - d.1.size - prec
  obtain ⟨d₁, n₁⟩ := Int.shift2 d.1 n.1 (e₁ + prec)
  let e₂ := if n₁ < d₁ then e₁ - 1 else e₁
  let e₃ := max e₂ emin
  obtain ⟨d₂, n₂⟩ := Int.shift2 d.1 n.1 (e₃ + prec)
  let r := mkRat n₂ d₂
  let m := r.floor
  refine (Float.finite Bool.false e₃ (Int.toNat m) ?_, r.den = 1)
  exact lcProof

-- Porting note: remove this line when you dropped 'lcProof'
set_option linter.unusedVariables false in
@[nolint docBlame]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d98019bfcac40d82ae9757197786149814a85f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
