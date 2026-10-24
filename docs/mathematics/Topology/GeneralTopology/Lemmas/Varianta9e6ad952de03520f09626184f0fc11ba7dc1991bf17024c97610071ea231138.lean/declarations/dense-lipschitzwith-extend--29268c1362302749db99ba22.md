# Dense.lipschitzWith_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13641717-2bac-52f7-2460-fb7c1f21939a",
  "kind": "lemma",
  "lexical_name": "Dense.lipschitzWith_extend",
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
  "slug": "dense-lipschitzwith-extend--29268c1362302749db99ba22",
  "source": {
    "blob": "d557b7f2be78cd090be4a19db377d02bae98d252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 943,
    "line": 928,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29268c1362302749db99ba2272e5d4ba8b5744fcd01bef096f29683412b0f782",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13641717-2bac-52f7-2460-fb7c1f21939a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 928–943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Dense.lipschitzWith_extend {α β : Type*}
    [PseudoEMetricSpace α] [EMetricSpace β] [CompleteSpace β]
    {s : Set α} (hs : Dense s) {f : s → β} {K : ℝ≥0} (hf : LipschitzWith K f) :
    LipschitzWith K (hs.extend f) := by
  have : IsClosed {p : α × α | edist (hs.extend f p.1) (hs.extend f p.2) ≤ K * edist p.1 p.2} := by
    have : Continuous (hs.extend f) := (hs.uniformContinuous_extend hf.uniformContinuous).continuous
    apply isClosed_le (by fun_prop)
    exact (ENNReal.continuous_const_mul (by simp)).comp (by fun_prop)
  have : Dense {p : α × α | edist (hs.extend f p.1) (hs.extend f p.2) ≤ K * edist p.1 p.2} := by
    apply (hs.prod hs).mono
    rintro ⟨x, y⟩ ⟨hx, hy⟩
    have Ax : hs.extend f x = f ⟨x, hx⟩ := hs.extend_eq hf.continuous ⟨x, hx⟩
    have Ay : hs.extend f y = f ⟨y, hy⟩ := hs.extend_eq hf.continuous ⟨y, hy⟩
    simp only [Set.mem_ofPred_eq, Ax, Ay]
    exact hf ⟨x, hx⟩ ⟨y, hy⟩
  simpa only [Dense, IsClosed.closure_eq, Set.mem_ofPred_eq, Prod.forall] using! this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean#L928).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d557b7f2be78cd090be4a19db377d02bae98d252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
