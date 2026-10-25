# conjugatedCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:611093d84bfe3d26fe34fcb566f2c30b4fb9163a0872126817ccd13c39385846",
  "kind": "def",
  "lexical_name": "conjugatedCore",
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
  "slug": "conjugatedcore--4dfc07c685cbd02da952519b",
  "source": {
    "blob": "e3e928588663fe167639e70b0242f94f57a5b012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Varianta3ce6fa5fbfb0ae98512431b5f63ebcbfbbe575c8fa098476a3fa00bda354814.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dfc07c685cbd02da952519b9a86ce39005d71303b1a66694af4f8526d1b1ee7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Varianta3ce6fa5fbfb0ae98512431b5f63ebcbfbbe575c8fa098476a3fa00bda354814.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:611093d84bfe3d26fe34fcb566f2c30b4fb9163a0872126817ccd13c39385846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conjugatedCore
    (A : ConvolutionalLinearEquiv X)
    (C : InvolutiveConvolutionCore X)
    (cycle : DirectedCycleQuantum X)
    (kernel : CycleKernel cycle.period ℝ)
    (convolution_spec :
      ∀ f, A.conjugatedOperator C f = cycleConvolution cycle kernel f) :
    InvolutiveConvolutionCore X where
  cycle := cycle
  kernel := kernel
  operator := A.conjugatedOperator C
  convolution_spec := convolution_spec
  involutive := A.conjugatedOperator_involutive C

end ConvolutionalLinearEquiv

end FinitePermutationDynamics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Varianta3ce6fa5fbfb0ae98512431b5f63ebcbfbbe575c8fa098476a3fa00bda354814.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Varianta3ce6fa5fbfb0ae98512431b5f63ebcbfbbe575c8fa098476a3fa00bda354814.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e928588663fe167639e70b0242f94f57a5b012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
