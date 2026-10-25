# bind_decode_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c82528a-1cbd-eb8e-eeec-a648bc25e21a",
  "kind": "theorem",
  "lexical_name": "bind_decode_iff",
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
  "slug": "bind-decode-iff--8bfd33db3e9b10031a903d40",
  "source": {
    "blob": "68dd6b3a579250074f3126bf297862a324e8950b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 569,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bfd33db3e9b10031a903d40bfafd7ed2224e85b0078cbffe212c6714dd1248d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c82528a-1cbd-eb8e-eeec-a648bc25e21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind_decode_iff {f : α → β → Option σ} :
    (Computable₂ fun a n => (decode (α := β) n).bind (f a)) ↔ Computable₂ f :=
  ⟨fun hf =>
    Nat.Partrec.of_eq
      (((Partrec.nat_iff.2
        (Nat.Partrec.ppred.comp <| Nat.Partrec.of_primrec <| Primcodable.prim (α := β))).comp
            snd).bind
        (Computable.comp hf fst).to₂.partrec₂)
      fun n => by
        simp only [decode_prod_val, decode_nat, Option.map_some, PFun.coe_val, bind_eq_bind,
          bind_some, Part.map_bind, map_some]
        cases decode (α := α) n.unpair.1 <;> simp
        cases decode (α := β) n.unpair.2 <;> simp,
    fun hf => by
    have :
      Partrec fun a : α × ℕ =>
        (encode (decode (α := β) a.2)).casesOn (some Option.none)
          fun n => Part.map (f a.1) (decode (α := β) n) :=
      Partrec.nat_casesOn_right
        (h := fun (a : α × ℕ) (n : ℕ) ↦ map (fun b ↦ f a.1 b) (Part.ofOption (decode n)))
        (Primrec.encdec.to_comp.comp snd) (const Option.none)
        ((ofOption (Computable.decode.comp snd)).map (hf.comp (fst.comp <| fst.comp fst) snd).to₂)
    refine this.of_eq fun a => ?_
    simp; cases decode (α := β) a.2 <;> simp [encodek]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dd6b3a579250074f3126bf297862a324e8950b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
