# HasSplitMultiplicativeReduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b705b454bc51a36863eab06b2cab07f3baaa170539ad5d836a2cf00ebf3fe6f1",
  "kind": "class",
  "lexical_name": "HasSplitMultiplicativeReduction",
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
  "slug": "hassplitmultiplicativereduction--9a0b65b5806839daf54462ef",
  "source": {
    "blob": "67494c807f64aaf882dd2b6b0edf366df83ba3f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 366,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a0b65b5806839daf54462efca6e4dbf712a15128fc6af519124fdbdff6ff0b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b705b454bc51a36863eab06b2cab07f3baaa170539ad5d836a2cf00ebf3fe6f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasSplitMultiplicativeReduction (W : WeierstrassCurve K) : Prop
    extends W.HasMultiplicativeReduction R where
  splitMultiplicativeReduction : letI I := W.integralModel R
    Splits <| .map (algebraMap R (ResidueField R)) <|
      C I.c₄ * X ^ 2 + C (I.a₁ * I.c₄) * X - C (54 * I.b₆ - 3 * I.b₂ * I.b₄ + I.a₂ * I.c₄)

variable {W : WeierstrassCurve K}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67494c807f64aaf882dd2b6b0edf366df83ba3f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
