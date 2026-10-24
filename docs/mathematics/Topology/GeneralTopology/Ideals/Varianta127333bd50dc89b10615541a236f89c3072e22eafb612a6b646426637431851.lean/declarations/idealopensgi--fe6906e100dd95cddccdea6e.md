# idealOpensGI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4c36259e917694cc7007029460d08731120b3c406f520c47abaca28288bedb8",
  "kind": "def",
  "lexical_name": "idealOpensGI",
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
  "slug": "idealopensgi--fe6906e100dd95cddccdea6e",
  "source": {
    "blob": "46f7fd440c87cd19a2b853573e2e5fb4c18a86a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe6906e100dd95cddccdea6ec3a030d97984ea085fe410567b19a0c5f0bcb6bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4c36259e917694cc7007029460d08731120b3c406f520c47abaca28288bedb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idealOpensGI : GaloisInsertion (opensOfIdeal : Ideal C(X, 𝕜) → Opens X) fun s => idealOfSet 𝕜 s
    where
  choice I _ := opensOfIdeal I.closure
  gc I s := ideal_gc X 𝕜 I s
  le_l_u s := (setOfIdeal_ofSet_of_isOpen 𝕜 s.isOpen).ge
  choice_eq I hI :=
    congr_arg _ <|
      Ideal.ext
        (Set.ext_iff.mp
          (isClosed_of_closure_subset <|
              (idealOfSet_ofIdeal_eq_closure I ▸ hI : I.closure ≤ I)).closure_eq)
#align continuous_map.ideal_opens_gi ContinuousMap.idealOpensGI

variable {X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46f7fd440c87cd19a2b853573e2e5fb4c18a86a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
