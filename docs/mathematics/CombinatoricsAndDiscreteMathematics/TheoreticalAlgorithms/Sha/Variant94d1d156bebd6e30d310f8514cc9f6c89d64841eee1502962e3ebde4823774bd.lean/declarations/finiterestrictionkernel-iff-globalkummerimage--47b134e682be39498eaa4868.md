# finiteRestrictionKernel_iff_globalKummerImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7cdaccfe3301a1e850a0b5b32399377e081fa94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c0accb6-5a77-d28d-a2b4-c773353edcc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:721c8880-c57c-3c3b-c459-e92e63dbb863",
  "kind": "theorem",
  "lexical_name": "finiteRestrictionKernel_iff_globalKummerImage",
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
  "slug": "finiterestrictionkernel-iff-globalkummerimage--47b134e682be39498eaa4868",
  "source": {
    "blob": "b7cdaccfe3301a1e850a0b5b32399377e081fa94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 353,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47b134e682be39498eaa4868a404918b93f913b567089375d992213920e04013",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:721c8880-c57c-3c3b-c459-e92e63dbb863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteRestrictionKernel_iff_globalKummerImage
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {K : KummerSelmerExactSequenceCertificate M n}
    {T : TateShafarevichGroupInterface M}
    (B : FiniteSelmerShaExactnessBridge K T)
    (c :
      GaloisCohomology.FiniteH1
        K.finiteSelmerProblem.G
        K.finiteSelmerProblem.A
        K.finiteSelmerProblem.ρG)
    (hc : K.finiteSelmerProblem.selmerSubgroup.carrier c) :
    T.shaData.finiteRestrictionKernel (B.selmerClassToSha c hc) ↔
      ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
        K.finiteKummerSelmer.globalKummer.toH1 x = c := by
  exact
    (B.compatibleWithFiniteRestrictionKernel c hc).trans
      ((B.finiteRestrictionKernelMatchesSelmerObstruction c hc).symm.trans
        (B.kernel_iff_globalKummerImage c hc))

end FiniteSelmerShaExactnessBridge

/--
The BSD-facing Selmer/Sha bridge certificate.

This packages the constructed finite Selmer exactness bridge together with the
quality gates for the Kummer/Selmer and Tate-Shafarevich interfaces.  It is
still a conditional input, not a proof of BSD or Sha finiteness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7cdaccfe3301a1e850a0b5b32399377e081fa94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
