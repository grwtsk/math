# Commute.negPart_anti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:414e5128-15e2-2bbd-a630-6e08db227046",
  "kind": "lemma",
  "lexical_name": "Commute.negPart_anti",
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
  "slug": "commute-negpart-anti--79c77f35ea939fcd19d84584",
  "source": {
    "blob": "229b9077e01de4f2b8915ccd9da8bf3c62ba3ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 113,
    "path": "GRWTSK/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79c77f35ea939fcd19d845841b5de600100437ec5b8aecd27254c20c74aea045",
  "verification": {
    "reference": "docs/verification/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:414e5128-15e2-2bbd-a630-6e08db227046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Commute.negPart_anti {a b : A} (hab : Commute a b) (hle : a ≤ b)
    (ha : IsSelfAdjoint a := by cfc_tac) (hb : IsSelfAdjoint b := by cfc_tac) :
    b⁻ ≤ a⁻ := by
  rw [← CFC.posPart_neg, ← CFC.posPart_neg]
  exact CStarAlgebra.Commute.posPart_mono (by simpa using hab.symm) (by simpa)

end NonComm

end CStarAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229b9077e01de4f2b8915ccd9da8bf3c62ba3ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
