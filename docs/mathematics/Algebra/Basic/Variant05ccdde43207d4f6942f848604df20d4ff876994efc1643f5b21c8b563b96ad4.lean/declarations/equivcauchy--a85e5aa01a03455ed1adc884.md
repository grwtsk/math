# equivCauchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e51be8ab616089cbd2093f8bd9e180440673631e07fb16376101e13ea5dc6f5",
  "kind": "def",
  "lexical_name": "equivCauchy",
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
  "slug": "equivcauchy--a85e5aa01a03455ed1adc884",
  "source": {
    "blob": "c0a4bf5365127049ed45530638a3e659eb673575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 75,
    "path": "GRWTSK/Algebra/Basic/Variant05ccdde43207d4f6942f848604df20d4ff876994efc1643f5b21c8b563b96ad4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a85e5aa01a03455ed1adc8842a41ce626508441d9b15023dabe19c6742a2ac97",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant05ccdde43207d4f6942f848604df20d4ff876994efc1643f5b21c8b563b96ad4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e51be8ab616089cbd2093f8bd9e180440673631e07fb16376101e13ea5dc6f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivCauchy : ℝ ≃ CauSeq.Completion.Cauchy (abs : ℚ → ℚ) :=
  ⟨Real.cauchy, Real.ofCauchy, fun ⟨_⟩ => rfl, fun _ => rfl⟩

-- irreducible doesn't work for instances: https://github.com/leanprover-community/lean/issues/511
private irreducible_def zero : ℝ :=
  ⟨0⟩

private irreducible_def one : ℝ :=
  ⟨1⟩

private irreducible_def add : ℝ → ℝ → ℝ
  | ⟨a⟩, ⟨b⟩ => ⟨a + b⟩

private irreducible_def neg : ℝ → ℝ
  | ⟨a⟩ => ⟨-a⟩

private irreducible_def mul : ℝ → ℝ → ℝ
  | ⟨a⟩, ⟨b⟩ => ⟨a * b⟩

private noncomputable irreducible_def inv' : ℝ → ℝ
  | ⟨a⟩ => ⟨a⁻¹⟩

@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant05ccdde43207d4f6942f848604df20d4ff876994efc1643f5b21c8b563b96ad4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant05ccdde43207d4f6942f848604df20d4ff876994efc1643f5b21c8b563b96ad4.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0a4bf5365127049ed45530638a3e659eb673575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
