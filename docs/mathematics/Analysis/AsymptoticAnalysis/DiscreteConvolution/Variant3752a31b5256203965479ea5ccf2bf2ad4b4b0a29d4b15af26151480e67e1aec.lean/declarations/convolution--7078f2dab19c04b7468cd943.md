# convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4f29c447dd121348d99c9d9a528906a2f305e5582e05041c4e04238541743ec",
  "kind": "def",
  "lexical_name": "convolution",
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
  "slug": "convolution--7078f2dab19c04b7468cd943",
  "source": {
    "blob": "7de72f1d982b8ce1a57189f79d97c9d1d7b2427c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 122,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7078f2dab19c04b7468cd943c70ac3f084abd10d1b4645daae13a21d1bbe9d8f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4f29c447dd121348d99c9d9a528906a2f305e5582e05041c4e04238541743ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def convolution (L : E →ₗ[S] E' →ₗ[S] F) (f : M → E) (g : M → E') : M → F :=
  fun x => ∑' ab : mulFiber x, L (f ab.1.1) (g ab.1.2)

/-- Notation for discrete convolution with explicit bilinear map:
`(f ⋆[L] g) x = ∑' ab : mulFiber x, L (f ab.1.1) (g ab.1.2)`. -/
scoped notation:67 f:68 " ⋆[" L "] " g:67 => convolution L f g

/-- Notation for additive convolution with explicit bilinear map:
`(f ⋆₊[L] g) x = ∑' ab : addFiber x, L (f ab.1.1) (g ab.1.2)`. -/
scoped notation:67 f:68 " ⋆₊[" L "] " g:67 => addConvolution L f g

end Definition

section BasicProperties

variable [Monoid M] [CommSemiring S] [AddCommMonoid E] [AddCommMonoid E'] [AddCommMonoid F]
variable [Module S E] [Module S E'] [Module S F]
variable [TopologicalSpace F]

@[to_additive (dont_translate := S E E' F) (attr := simp) zero_addConvolution]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de72f1d982b8ce1a57189f79d97c9d1d7b2427c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
