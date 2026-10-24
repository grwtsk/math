# zeroExtensionVector_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70fcf1d410795c481f132200bebc42577c5fef22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3495e94a2ac8d7a3c1e84e3c562b99c842b0aca7227e202674fe394a80fc91ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:760f2efe-dd2e-3b6c-6898-9da968365c07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13a374d2-7e9f-1202-55c8-267da0444809",
  "kind": "theorem",
  "lexical_name": "zeroExtensionVector_add",
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
  "slug": "zeroextensionvector-add--850930d1b3b63261cd6971d6",
  "source": {
    "blob": "70fcf1d410795c481f132200bebc42577c5fef22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineOperator/Variant3495e94a2ac8d7a3c1e84e3c562b99c842b0aca7227e202674fe394a80fc91ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850930d1b3b63261cd6971d69f8888d7e193bde96ff13bb3b92610cbe8245db5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineOperator/Variant3495e94a2ac8d7a3c1e84e3c562b99c842b0aca7227e202674fe394a80fc91ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13a374d2-7e9f-1202-55c8-267da0444809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroExtensionVector_add (f g : H) :
    zeroExtensionVector (f + g) = zeroExtensionVector f + zeroExtensionVector g := by
  apply Lp.ext
  have hfg := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_add f g)
  filter_upwards [zeroExtensionVector_ae (f + g),
    Lp.coeFn_add (zeroExtensionVector f) (zeroExtensionVector g),
    zeroExtensionVector_ae f, zeroExtensionVector_ae g, hfg] with x hsum hout hf hg hfgx
  rw [hsum, hout, Pi.add_apply, hf, hg]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.add_apply] using hfgx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, add_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineOperator/Variant3495e94a2ac8d7a3c1e84e3c562b99c842b0aca7227e202674fe394a80fc91ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineOperator/Variant3495e94a2ac8d7a3c1e84e3c562b99c842b0aca7227e202674fe394a80fc91ab.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70fcf1d410795c481f132200bebc42577c5fef22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
