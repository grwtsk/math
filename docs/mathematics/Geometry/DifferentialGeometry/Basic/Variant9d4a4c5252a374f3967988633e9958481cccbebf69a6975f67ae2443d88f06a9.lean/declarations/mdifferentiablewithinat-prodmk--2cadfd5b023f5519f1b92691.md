# MDifferentiableWithinAt.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfb7452c-f7ad-f62c-f1ed-009b2047bd28",
  "kind": "theorem",
  "lexical_name": "MDifferentiableWithinAt.prodMk",
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
  "slug": "mdifferentiablewithinat-prodmk--2cadfd5b023f5519f1b92691",
  "source": {
    "blob": "4e587fe5b3410f6e5528e9b31a119d3c873f9680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 526,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cadfd5b023f5519f1b926917c7993245b2fa8f9b87bb6629a768faaf127f272",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfb7452c-f7ad-f62c-f1ed-009b2047bd28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MDifferentiableWithinAt.prodMk {f : M → M'} {g : M → M''}
    (hf : MDifferentiableWithinAt I I' f s x) (hg : MDifferentiableWithinAt I I'' g s x) :
    MDifferentiableWithinAt I (I'.prod I'') (fun x => (f x, g x)) s x :=
  ⟨hf.1.prodMk hg.1, hf.2.prodMk hg.2⟩

@[deprecated (since := "2025-03-08")]
alias MDifferentiableWithinAt.prod_mk := MDifferentiableWithinAt.prodMk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e587fe5b3410f6e5528e9b31a119d3c873f9680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
