# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51450ac1-8555-d9da-6c09-666f56159899",
  "kind": "theorem",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--ac56435458739a4d8bc4dc79",
  "source": {
    "blob": "fca5a6e3447253dcd0c6da0733a9691f235cb095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1340,
    "line": 1317,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantee1506718c040dfc39038a86581f32a7b4a6512f4cc950787bccbd11f3693ff9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac56435458739a4d8bc4dc79ee82033206c1a8b36aacd6af8ac376bcc9cd1843",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantee1506718c040dfc39038a86581f32a7b4a6512f4cc950787bccbd11f3693ff9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51450ac1-8555-d9da-6c09-666f56159899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1317–1340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on [AddMonoid G] {p : k[G] → Prop} (f : k[G])
    (hM : ∀ g, p (of k G (Multiplicative.ofAdd g)))
    (hadd : ∀ f g : k[G], p f → p g → p (f + g))
    (hsmul : ∀ (r : k) (f), p f → p (r • f)) : p f := by
  refine Finsupp.induction_linear f ?_ (fun f g hf hg => hadd f g hf hg) fun g r => ?_
  · simpa using hsmul 0 (of k G (Multiplicative.ofAdd 0)) (hM 0)
  · convert hsmul r (of k G (Multiplicative.ofAdd g)) (hM g)
    simp

end MiscTheorems

end AddMonoidAlgebra

namespace AddMonoidAlgebra

variable {k G H}

/-! #### Non-unital, non-associative algebra structure -/


section NonUnitalNonAssocAlgebra

variable (k) [Semiring k] [DistribSMul R k] [Add G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantee1506718c040dfc39038a86581f32a7b4a6512f4cc950787bccbd11f3693ff9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantee1506718c040dfc39038a86581f32a7b4a6512f4cc950787bccbd11f3693ff9.lean#L1317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca5a6e3447253dcd0c6da0733a9691f235cb095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
