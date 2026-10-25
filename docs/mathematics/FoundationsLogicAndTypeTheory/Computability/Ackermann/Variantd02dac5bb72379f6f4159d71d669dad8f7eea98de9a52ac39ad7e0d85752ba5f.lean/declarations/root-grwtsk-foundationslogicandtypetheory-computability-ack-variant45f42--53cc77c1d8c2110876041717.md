# _root_.GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ack.Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.computable₂_ack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02dc34a4-2453-dbdc-218f-62d161e0b7ad",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ack.Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.computable₂_ack",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-computability-ack-variant45f42--53cc77c1d8c2110876041717",
  "source": {
    "blob": "0e9e50e6aed1cc245f6e1c040646457d5beb4a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53cc77c1d8c21108760417175eef8f6bf4da0aa49285e23557938673381c8508",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02dc34a4-2453-dbdc-218f-62d161e0b7ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ack.Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.computable₂_ack : Computable₂ ack := by
  apply _root_.Partrec.of_eq_tot
    (f := fun p : ℕ × ℕ => (pappAck p.1).eval p.2) (g := fun p : ℕ × ℕ => ack p.1 p.2)
  · change Partrec₂ (fun m n => (pappAck m).eval n)
    apply_rules only
      [Code.eval_part.comp₂, Computable.fst, Computable.snd, primrec_pappAck.to_comp.comp]
  · simp

end Nat.Partrec.Code
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9e50e6aed1cc245f6e1c040646457d5beb4a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
