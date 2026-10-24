# upperSemicontinuous_biInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da7ea479-3abd-ab6b-7f47-63c19142e783",
  "kind": "theorem",
  "lexical_name": "upperSemicontinuous_biInf",
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
  "slug": "uppersemicontinuous-biinf--606ec5ec518f8592afc39fd5",
  "source": {
    "blob": "61b202dcb4fb0319aaa7ff551674bf000c0202ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1075,
    "line": 1065,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Varianta8e1a0bd62dfec23c9badb7be6f993d00120db044f30abe8dcec28903e9e1830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:606ec5ec518f8592afc39fd509ff22f39d71b7d8ed96c7f92c6a54ff04e5629a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semicontinuous/Varianta8e1a0bd62dfec23c9badb7be6f993d00120db044f30abe8dcec28903e9e1830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7ea479-3abd-ab6b-7f47-63c19142e783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1075.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperSemicontinuous_biInf {p : ι → Prop} {f : ∀ i, p i → α → δ}
    (h : ∀ i hi, UpperSemicontinuous (f i hi)) :
    UpperSemicontinuous fun x' => ⨅ (i) (hi), f i hi x' :=
  upperSemicontinuous_iInf fun i => upperSemicontinuous_iInf fun hi => h i hi

end

section

variable {γ : Type*} [LinearOrder γ] [TopologicalSpace γ] [OrderTopology γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semicontinuous/Varianta8e1a0bd62dfec23c9badb7be6f993d00120db044f30abe8dcec28903e9e1830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Varianta8e1a0bd62dfec23c9badb7be6f993d00120db044f30abe8dcec28903e9e1830.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b202dcb4fb0319aaa7ff551674bf000c0202ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
