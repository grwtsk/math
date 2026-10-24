# signedMeter_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa99cbc1-5a9a-d676-d3c1-c8d8ca17c93c",
  "kind": "theorem",
  "lexical_name": "signedMeter_le_iff",
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
  "slug": "signedmeter-le-iff--9b1965990bcccd28b921b20d",
  "source": {
    "blob": "22043c0ea6677dcd6667892069ca4c3e2f073637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 211,
    "path": "GRWTSK/Analysis/MeasureTheory/OriginalSignedSupplier/Variant6ff215f619caab535b40511e9d9dfdb539d1963f2d46ca2601b1262a41f869e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b1965990bcccd28b921b20d5582d6c142dd70b07cfe829248f61a44594ce0a5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/OriginalSignedSupplier/Variant6ff215f619caab535b40511e9d9dfdb539d1963f2d46ca2601b1262a41f869e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa99cbc1-5a9a-d676-d3c1-c8d8ca17c93c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedMeter_le_iff (A L : ℝ) (hL : 0 ≤ L) :
    signedMeter A ≤ (L : EReal) ↔
      (∀ᵐ t ∂volume, t ∈ polaritySector A 1 → centeredPickup A t ≤ L) ∧
      (∀ᵐ t ∂volume, t ∈ polaritySector A (-1) → -centeredPickup A t ≤ L) := by
  have hsector (σ : ℝ) :
      essSup (sectorReadout A σ) volume ≤ (L : EReal) ↔
        ∀ᵐ t ∂volume, t ∈ polaritySector A σ → σ * centeredPickup A t ≤ L := by
    rw [← sectorReadout_le_iff]
    constructor
    · intro h
      exact (ae_le_essSup (f := sectorReadout A σ)).mono fun _ ht => ht.trans h
    · exact essSup_le_of_ae_le _
  simp only [signedMeter, max_le_iff, hsector, one_mul, neg_one_mul]
  have hz : (0 : EReal) ≤ (L : EReal) := by exact_mod_cast hL
  simp only [hz, true_and]

end FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OriginalSignedSupplier/Variant6ff215f619caab535b40511e9d9dfdb539d1963f2d46ca2601b1262a41f869e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OriginalSignedSupplier/Variant6ff215f619caab535b40511e9d9dfdb539d1963f2d46ca2601b1262a41f869e4.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22043c0ea6677dcd6667892069ca4c3e2f073637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
