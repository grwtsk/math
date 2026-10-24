# _root_.GRWTSK.Algebra.AlgebraGenerators.Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.Algebra.FiniteType.iff_exists_generators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8c23239-4155-d635-139f-d1fa78596c7c",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.AlgebraGenerators.Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.Algebra.FiniteType.iff_exists_generators",
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
  "slug": "root-grwtsk-algebra-algebragenerators-variant1c0d05d2dd75faf3dbdb9e52257--2e651efc285426844758fecf",
  "source": {
    "blob": "412d88c2574a8c795883acfb12eda1de4ce5c4f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 391,
    "path": "GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e651efc285426844758fecfd6d0f1141286b0267b5f45bf6e396a5814f4c444",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8c23239-4155-d635-139f-d1fa78596c7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.AlgebraGenerators.Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.Algebra.FiniteType.iff_exists_generators :
    FiniteType R S ↔ ∃ (n : ℕ), Nonempty (Generators R S (Fin n)) := by
  refine ⟨fun h ↦ ?_, fun ⟨n, ⟨P⟩⟩ ↦ P.finiteType⟩
  obtain ⟨n, f, hf⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.mp h
  exact ⟨n, ⟨.ofSurjective (fun i ↦ f (X i)) <| by rwa [aeval_unique f] at hf⟩⟩

end Construction

variable {R' S' ι' : Type*} [CommRing R'] [CommRing S'] [Algebra R' S'] (P' : Generators R' S' ι')
variable {R'' S'' ι'' : Type*} [CommRing R''] [CommRing S''] [Algebra R'' S'']
  (P'' : Generators R'' S'' ι'')

section Hom

section

variable [Algebra R R'] [Algebra R' R''] [Algebra R' S'']
variable [Algebra S S'] [Algebra S' S''] [Algebra S S'']

/-- Given a commuting square
R --→ P = R[X] ---→ S
|                   |
↓                   ↓
R' -→ P' = R'[X'] → S
A hom between `P` and `P'` is an assignment `I → P'` such that the arrows commute.
Also see `Algebra.Generators.Hom.equivAlgHom`.
-/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `412d88c2574a8c795883acfb12eda1de4ce5c4f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
