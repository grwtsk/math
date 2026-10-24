# minimal_error_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c2b1327-223d-9c34-bc06-f4731469fe21",
  "kind": "theorem",
  "lexical_name": "minimal_error_iff",
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
  "slug": "minimal-error-iff--8590cd80c7a212cb67d4a1dd",
  "source": {
    "blob": "748d4cc6f7b1c13d1098a9558b6111f6df22496c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8590cd80c7a212cb67d4a1dd0b26f44ee2f3fdd8981753698e489734ce6cc22a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c2b1327-223d-9c34-bc06-f4731469fe21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimal_error_iff (w : FiniteFibreWeights B I)
    (f g : ∀ b, I b → ℝ) (hg : FibreConstant g) :
    w.positiveForm.form (f - g) (f - g) =
      w.positiveForm.form (f - w.averaging f) (f - w.averaging f) ↔
      g = w.averaging f := by
  have h := w.approximation_decomposition f g hg
  constructor
  · intro he
    have hz : w.positiveForm.form (w.averaging f - g) (w.averaging f - g) = 0 := by
      linarith
    exact (sub_eq_zero.mp ((w.form_eq_zero_iff _).mp hz)).symm
  · intro he; subst g; rfl

omit [Fintype B] [∀ b, Fintype (I b)] in
/-- The independent fibre condition is exactly factorization through the coarse label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `748d4cc6f7b1c13d1098a9558b6111f6df22496c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
