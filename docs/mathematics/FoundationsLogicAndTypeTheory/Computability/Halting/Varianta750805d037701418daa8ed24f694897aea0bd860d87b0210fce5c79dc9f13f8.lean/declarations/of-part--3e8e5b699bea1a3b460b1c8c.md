# of_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed972988-9f6a-ffec-d7f9-3d5d55c30df4",
  "kind": "theorem",
  "lexical_name": "of_part",
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
  "slug": "of-part--3e8e5b699bea1a3b460b1c8c",
  "source": {
    "blob": "0b430ed5929afaade34c7195caadee41f95ad889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e8e5b699bea1a3b460b1c8c5b1695ec29b332b101e69debe8b2d3ab445bd893",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed972988-9f6a-ffec-d7f9-3d5d55c30df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_part : ∀ {n f}, _root_.Partrec f → @Partrec' n f :=
  @(suffices ∀ f, Nat.Partrec f → @Partrec' 1 fun v => f v.head from fun {n f} hf => by
      let g := fun n₁ =>
        (Part.ofOption (decode (α := List.Vector ℕ n) n₁)).bind (fun a => Part.map encode (f a))
      exact
        (comp₁ g (this g hf) (prim Nat.Primrec'.encode)).of_eq fun i => by
          dsimp only [g]; simp [encodek, Part.map_id']
    fun f hf => by
    obtain ⟨c, rfl⟩ := exists_code.1 hf
    simpa [eval_eq_rfindOpt] using
      rfindOpt <|
        of_prim <|
          Primrec.encode_iff.2 <|
            primrec_evaln.comp <|
              (Primrec.vector_head.pair (_root_.Primrec.const c)).pair <|
                Primrec.vector_head.comp Primrec.vector_tail)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b430ed5929afaade34c7195caadee41f95ad889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
