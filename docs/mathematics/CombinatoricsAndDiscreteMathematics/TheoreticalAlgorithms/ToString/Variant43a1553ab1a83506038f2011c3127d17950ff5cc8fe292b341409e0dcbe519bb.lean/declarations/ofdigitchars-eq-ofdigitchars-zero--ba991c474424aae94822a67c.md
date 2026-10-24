# ofDigitChars_eq_ofDigitChars_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d45f8b59-ba6e-e3a7-8b18-e19d36340590",
  "kind": "theorem",
  "lexical_name": "ofDigitChars_eq_ofDigitChars_zero",
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
  "slug": "ofdigitchars-eq-ofdigitchars-zero--ba991c474424aae94822a67c",
  "source": {
    "blob": "f8dfeb93afb18f4425f9fde6d752603c4e9701bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 313,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba991c474424aae94822a67cb4bbb7739d8524c43c09082c257689e746a53d3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d45f8b59-ba6e-e3a7-8b18-e19d36340590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofDigitChars_eq_ofDigitChars_zero {l : List Char} {init : Nat} :
    ofDigitChars 10 l init = 10 ^ l.length * init + ofDigitChars 10 l 0 := by
  induction l generalizing init with
  | nil => simp [ofDigitChars]
  | cons hd tl ih =>
    simp only [ofDigitChars, ↓Char.isValue, Char.reduceToNat, List.foldl_cons, List.length_cons,
      Nat.mul_zero, Nat.zero_add] at ⊢ ih
    rw [ih, ih (init := hd.toNat - 48), Nat.pow_succ, Nat.mul_add, Nat.mul_assoc, Nat.add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8dfeb93afb18f4425f9fde6d752603c4e9701bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
