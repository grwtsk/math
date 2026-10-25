# optionCasesOn_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8f34eae-c12d-060c-d811-119e7e7ae525",
  "kind": "theorem",
  "lexical_name": "optionCasesOn_right",
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
  "slug": "optioncaseson-right--633cdbedecbc379b0065bf0c",
  "source": {
    "blob": "17ef398f40bce1b452ba73d183802bad9aeae17e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 690,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633cdbedecbc379b0065bf0c458a38f236a5c8f700055509b22aa45b989f67f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8f34eae-c12d-060c-d811-119e7e7ae525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 690–702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem optionCasesOn_right {o : α → Option β} {f : α → σ} {g : α → β →. σ} (ho : Computable o)
    (hf : Computable f) (hg : Partrec₂ g) :
    @Partrec _ σ _ _ fun a => Option.casesOn (o a) (Part.some (f a)) (g a) :=
  have :
    Partrec fun a : α =>
      Nat.casesOn (encode (o a)) (Part.some (f a)) (fun n => Part.bind (decode (α := β) n) (g a)) :=
    nat_casesOn_right (h := fun a n ↦ Part.bind (ofOption (decode n)) fun b ↦ g a b)
      (encode_iff.2 ho) hf.partrec <|
        ((@Computable.decode β _).comp snd).ofOption.bind (hg.comp (fst.comp fst) snd).to₂
  this.of_eq fun a => by rcases o a with - | b <;> simp [encodek]

@[deprecated (since := "2025-02-21")] alias option_casesOn_right := optionCasesOn_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean#L690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17ef398f40bce1b452ba73d183802bad9aeae17e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
