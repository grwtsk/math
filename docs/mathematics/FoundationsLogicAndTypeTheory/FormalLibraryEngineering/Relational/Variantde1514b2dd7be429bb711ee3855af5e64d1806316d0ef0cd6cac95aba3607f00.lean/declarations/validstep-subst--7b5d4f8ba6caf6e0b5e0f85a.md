# validStep_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:947477e5-eed4-e1c3-7e8f-f8489a6e409d",
  "kind": "theorem",
  "lexical_name": "validStep_subst",
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
  "slug": "validstep-subst--7b5d4f8ba6caf6e0b5e0f85a",
  "source": {
    "blob": "1880606c929795da6a76f730a55befb25c26b53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1245,
    "line": 1237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantde1514b2dd7be429bb711ee3855af5e64d1806316d0ef0cd6cac95aba3607f00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b5d4f8ba6caf6e0b5e0f85a386ca96c069cc8b66adddc4195af9569ce2071ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantde1514b2dd7be429bb711ee3855af5e64d1806316d0ef0cd6cac95aba3607f00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:947477e5-eed4-e1c3-7e8f-f8489a6e409d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1237–1245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem validStep_subst (L : LogicCode S) (KY KP : QuantifierCode S) (x i i' : Expr S) (σ :
  Nat → Expr S) :
    (R.validStep L KY KP x i i').subst σ =
      (R.subst σ).validStep (L.subst σ) (KY.subst σ) (KP.subst σ) (x.subst σ) (i.subst σ)
        (i'.subst σ) := by
  simp only [validStep,LogicCode.imp_subst,LogicCode.iff_subst,ChannelCode.predCompare_subst,
    ProbeCode.carrier_subst,channel_subst,le_subst]
  try rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantde1514b2dd7be429bb711ee3855af5e64d1806316d0ef0cd6cac95aba3607f00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantde1514b2dd7be429bb711ee3855af5e64d1806316d0ef0cd6cac95aba3607f00.lean#L1237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1880606c929795da6a76f730a55befb25c26b53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
