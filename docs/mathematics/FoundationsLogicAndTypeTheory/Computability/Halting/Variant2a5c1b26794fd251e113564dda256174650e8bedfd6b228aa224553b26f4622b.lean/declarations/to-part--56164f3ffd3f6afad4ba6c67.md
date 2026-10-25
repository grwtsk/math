# to_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b9c2a2b-5976-9d7e-add1-9fc210866cee",
  "kind": "theorem",
  "lexical_name": "to_part",
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
  "slug": "to-part--56164f3ffd3f6afad4ba6c67",
  "source": {
    "blob": "3066fc5f4bc4029ac10780c189c3cdfa82aefa1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56164f3ffd3f6afad4ba6c67e1493813023f23e13d89f1f01e09a9bd2fca9d71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b9c2a2b-5976-9d7e-add1-9fc210866cee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_part {n f} (pf : @Partrec' n f) : _root_.Partrec f := by
  induction pf
  case prim n f hf => exact hf.to_prim.to_comp
  case comp m n f g _ _ hf hg => exact (Partrec.vector_mOfFn fun i => hg i).bind (hf.comp snd)
  case rfind n f _ hf =>
    have := hf.comp (vector_cons.comp snd fst)
    have :=
      ((Primrec.eq.comp _root_.Primrec.id (_root_.Primrec.const 0)).to_comp.comp
        this).to₂.partrec₂
    exact _root_.Partrec.rfind this
#align nat.partrec'.to_part Nat.Partrec'.to_part

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3066fc5f4bc4029ac10780c189c3cdfa82aefa1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
