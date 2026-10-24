# frobeniusNormedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e463c7ffe66d76386fede8f4d01cc180cd300b0039159a2e026229200bd6aa78",
  "kind": "def",
  "lexical_name": "frobeniusNormedSpace",
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
  "slug": "frobeniusnormedspace--f0461f8dcfd0fd17c42fc3f3",
  "source": {
    "blob": "e027e59356c019204e1809b227611d909aca20f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 426,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variant6ad1c47285ea0a40681c726b11cb4226d5db58ffd8cbb45b567d539b2447c09e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0461f8dcfd0fd17c42fc3f359c8ca51f90e105eb4ff0433ef25f251aca87953",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variant6ad1c47285ea0a40681c726b11cb4226d5db58ffd8cbb45b567d539b2447c09e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e463c7ffe66d76386fede8f4d01cc180cd300b0039159a2e026229200bd6aa78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def frobeniusNormedSpace [NormedField R] [SeminormedAddCommGroup α] [NormedSpace R α] :
    NormedSpace R (Matrix m n α) :=
  (by infer_instance : NormedSpace R (PiLp 2 fun i : m => PiLp 2 fun j : n => α))
#align matrix.frobenius_normed_space Matrix.frobeniusNormedSpace

section SeminormedAddCommGroup

variable [SeminormedAddCommGroup α] [SeminormedAddCommGroup β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variant6ad1c47285ea0a40681c726b11cb4226d5db58ffd8cbb45b567d539b2447c09e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variant6ad1c47285ea0a40681c726b11cb4226d5db58ffd8cbb45b567d539b2447c09e.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e027e59356c019204e1809b227611d909aca20f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
