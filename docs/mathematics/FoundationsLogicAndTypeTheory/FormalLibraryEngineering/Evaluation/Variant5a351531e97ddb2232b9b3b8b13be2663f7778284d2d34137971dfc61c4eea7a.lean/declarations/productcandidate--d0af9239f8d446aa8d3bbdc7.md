# productCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca7b221510fb72d4f7ca20bdc723b242af3c017f9b6707e5908a5db0d73daac0",
  "kind": "def",
  "lexical_name": "productCandidate",
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
  "slug": "productcandidate--d0af9239f8d446aa8d3bbdc7",
  "source": {
    "blob": "9128ac91aec75d8a870df7d5b5ee7829a4d9e323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 703,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant5a351531e97ddb2232b9b3b8b13be2663f7778284d2d34137971dfc61c4eea7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0af9239f8d446aa8d3bbdc752e5bccf7e1faa9d28bba24abebdf90decc4b801",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant5a351531e97ddb2232b9b3b8b13be2663f7778284d2d34137971dfc61c4eea7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca7b221510fb72d4f7ca20bdc723b242af3c017f9b6707e5908a5db0d73daac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 703–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def productCandidate {D E : Expr S} {a b c : S}
    (hd : HasType P Γ D (.sort a)) (hb : HasType P (D :: Γ) E (.sort b))
    (hr : P.rule a b c)
    (ed : ∀ e : Environment (hw := hw) Ω C hno Γ, PreResult Ω C hno D (.sort a) e)
    (eb : ∀ e : Environment (hw := hw) Ω C hno (D :: Γ), PreResult Ω C hno E (.sort b) e)
    (e : Environment (hw := hw) Ω C hno Γ) : Candidate Ω (Expr.pi D E |>.subst
      e.images).normalForm := by
  let t := productData hd hb hr e
  let pc := t.candidate (ed e).read (fun n hn p hp => (eb (t.extend hn p hp)).read)
  exact ⟨pc.val,t.product_nf.symm ▸ pc.property⟩

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant5a351531e97ddb2232b9b3b8b13be2663f7778284d2d34137971dfc61c4eea7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant5a351531e97ddb2232b9b3b8b13be2663f7778284d2d34137971dfc61c4eea7a.lean#L703).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9128ac91aec75d8a870df7d5b5ee7829a4d9e323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
