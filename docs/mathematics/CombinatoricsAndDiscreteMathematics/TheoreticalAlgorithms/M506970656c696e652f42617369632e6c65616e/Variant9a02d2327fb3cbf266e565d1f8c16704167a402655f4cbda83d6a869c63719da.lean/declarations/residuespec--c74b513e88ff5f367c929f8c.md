# residueSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5617568cb34c08df913afd82f86f2f0a449f2be3a66edc504820d7d0bde2df1b",
  "kind": "def",
  "lexical_name": "residueSpec",
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
  "slug": "residuespec--c74b513e88ff5f367c929f8c",
  "source": {
    "blob": "2be46e3b9b820c4918e4cfced2e658f759b6dd5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 888,
    "line": 842,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c74b513e88ff5f367c929f8ce54f1beaecbf6f9da25cfc9abb2d83a98083edcd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5617568cb34c08df913afd82f86f2f0a449f2be3a66edc504820d7d0bde2df1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 842–888.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def residueSpec : Checkpoint -> ResidueSpec
  | .lower =>
      { atomId := "R_n.lower"
        kind := ResidueKind.missingLowering
        blocks := "failed finite lowering"
        clearsBy := "total lowering maps through L_n, E_n, N_n, and B_n" }
  | .decode =>
      { atomId := "R_n.decode"
        kind := ResidueKind.missingDecode
        blocks := "failed bitstream decoding"
        clearsBy := "a total decoder into W_n" }
  | .trace =>
      { atomId := "R_n.trace"
        kind := ResidueKind.missingTraceQuotient
        blocks := "invalid trace quotienting"
        clearsBy := "validated trace order, flips, and quotient map" }
  | .section =>
      { atomId := "R_n.section"
        kind := ResidueKind.missingSection
        blocks := "failed canonical inverse section"
        clearsBy := "normal form, encoder, and round-trip proofs" }
  | .transition =>
      { atomId := "R_n.transition"
        kind := ResidueKind.missingTransition
        blocks := "failed cross-stage compatibility"
        clearsBy := "commuting transition squares" }
  | .authority =>
      { atomId := "R_n.authority"
        kind := ResidueKind.authorityOverclaim
        blocks := "compact shadow or external theorem overclaim"
        clearsBy := "a local proof artifact or explicit residue boundary" }
  | .scheduler =>
      { atomId := "R_n.scheduler"
        kind := ResidueKind.missingUniformBound
        blocks := "failed finite scheduling"
        clearsBy := "finite scheduler carriers, bounds, and guard proof" }
  | .cluster =>
      { atomId := "R_n.cluster"
        kind := ResidueKind.conjecturalAtom
        blocks := "undefined or quarantined classification output"
        clearsBy := "a finite cluster map with declared quarantine behavior" }
  | .asymptotic =>
      { atomId := "R_n.asymptotic"
        kind := ResidueKind.missingAsymptoticTransfer
        blocks := "illegal finite-to-infinite transfer"
        clearsBy := "a separate transfer theorem, not finite evidence alone" }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da.lean#L842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be46e3b9b820c4918e4cfced2e658f759b6dd5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
