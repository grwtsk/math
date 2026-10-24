# quotientInfToPiQuotient_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4836028-0649-f52b-8860-ef0bb854ebcf",
  "kind": "theorem",
  "lexical_name": "quotientInfToPiQuotient_bijective",
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
  "slug": "quotientinftopiquotient-bijective--2a165b430c1382664b40c0fe",
  "source": {
    "blob": "619506e8ca5f79eb54d81c4542f7c92587cc90c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 478,
    "path": "GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a165b430c1382664b40c0fe1fc52db67f9e7debcaf17df03ffaa36e32bdb6da",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4836028-0649-f52b-8860-ef0bb854ebcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientInfToPiQuotient_bijective [Finite ι] {f : ι → Ideal R}
    (hf : ∀ i j, i ≠ j → f i ⊔ f j = ⊤) : Function.Bijective (quotientInfToPiQuotient f) :=
  ⟨fun x y =>
    Quotient.inductionOn₂' x y fun r s hrs =>
      Quotient.eq.2 <|
        (Submodule.mem_iInf _).2 fun i =>
          Quotient.eq.1 <|
            show quotientInfToPiQuotient f (Quotient.mk'' r) i = _ by rw [hrs]; rfl,
    fun g =>
    let ⟨r, hr⟩ := exists_sub_mem hf fun i => Quotient.out' (g i)
    ⟨Quotient.mk _ r, funext fun i => Quotient.out_eq' (g i) ▸ Quotient.eq.2 (hr i)⟩⟩
#align ideal.quotient_inf_to_pi_quotient_bijective Ideal.quotientInfToPiQuotient_bijective

/-- Chinese Remainder Theorem. Eisenbud Ex.2.6. Similar to Atiyah-Macdonald 1.10 and Stacks 00DT -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `619506e8ca5f79eb54d81c4542f7c92587cc90c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
