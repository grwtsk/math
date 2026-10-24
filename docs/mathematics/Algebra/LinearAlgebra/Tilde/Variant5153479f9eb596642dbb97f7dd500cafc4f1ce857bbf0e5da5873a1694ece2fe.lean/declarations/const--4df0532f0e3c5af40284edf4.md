# const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d201d77307a9106a40060c3b6109b3e7552663f9374e6a8db3e10708bb4241f2",
  "kind": "def",
  "lexical_name": "const",
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
  "slug": "const--4df0532f0e3c5af40284edf4",
  "source": {
    "blob": "676cac9f85635e220480acd39f7281ebe0c16b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 335,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4df0532f0e3c5af40284edf46aa2dec654256cb615d0314553c106e4dbc30120",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d201d77307a9106a40060c3b6109b3e7552663f9374e6a8db3e10708bb4241f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def const (m : M) (r : R) (U : Opens (PrimeSpectrum.Top R))
    (hu : ∀ x ∈ U, r ∈ (x : PrimeSpectrum.Top R).asIdeal.primeCompl) :
    (tildeInModuleCat M).obj (op U) :=
  ⟨fun x => LocalizedModule.mk m ⟨r, hu x x.2⟩, fun x =>
    ⟨U, x.2, 𝟙 _, m, r, fun y => ⟨hu _ y.2, by
      simpa only [LocalizedModule.mkLinearMap_apply, LocalizedModule.smul'_mk,
        LocalizedModule.mk_eq] using ⟨1, by simp⟩⟩⟩⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `676cac9f85635e220480acd39f7281ebe0c16b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
