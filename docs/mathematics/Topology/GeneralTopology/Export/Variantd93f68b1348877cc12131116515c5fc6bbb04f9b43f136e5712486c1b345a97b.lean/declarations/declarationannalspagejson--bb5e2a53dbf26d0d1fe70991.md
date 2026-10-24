# declarationAnnalsPageJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b4c21eb7891f078a9bd83b1463dced21b41c315e815392813213323505f5f04",
  "kind": "def",
  "lexical_name": "declarationAnnalsPageJson",
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
  "slug": "declarationannalspagejson--bb5e2a53dbf26d0d1fe70991",
  "source": {
    "blob": "445735cc7fe93e279ac0e830eaaba311dfff0e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 516,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb5e2a53dbf26d0d1fe7099144a0c414b1ecdc191a735af989e21bf137e17332",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b4c21eb7891f078a9bd83b1463dced21b41c315e815392813213323505f5f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def declarationAnnalsPageJson (info : ConstantInfo) (deps : List String) : String :=
  let name := info.name.toString
  let boundaryClass := declarationProofBoundaryClass info
  let theoremStatement :=
    if info.isTheorem && boundaryClass = "theorem-facing" then
      some name
    else
      none
  let given :=
    surfaceDependencyNames deps
  let certificatePackages :=
    if boundaryClass = "certificate-only" then
      [name] ++ declarationCertificatePackageNames deps
    else
      declarationCertificatePackageNames deps
  let hardInput :=
    if certificatePackages.isEmpty then
      ["explicit Lean hypotheses and imported interfaces"]
    else
      certificatePackages
  let proves :=
    if theoremStatement.isSome then
      ["the named Lean theorem under its exact hypotheses"]
    else
      ["interface or certificate package only; no public theorem statement"]
  let notProved := [
    "external grand-challenge theorem beyond the named Lean declaration",
    "authority from dashboards, labels, finite syntax, or generated fixtures"
  ]
  "{\"cone\":" ++ jsonString (declarationConeLabel name) ++
  ",\"exactTheoremStatement\":" ++ jsonStringOrNull theoremStatement ++
  ",\"given\":" ++ jsonStringArray given ++
  ",\"hardInput\":" ++ jsonStringArray hardInput ++
  ",\"proofDependencies\":" ++ jsonStringArray given ++
  ",\"assumptionBudget\":" ++ jsonStringArray [
      "all hypotheses are explicit in the Lean declaration type",
      "certificate packages are consumed as inputs, not public theorem results"
    ] ++
  ",\"whatThisTheoremProves\":" ++ jsonStringArray proves ++
  ",\"whatThisTheoremDoesNotProve\":" ++ jsonStringArray notProved ++
  ",\"certificatePackagesConsumed\":" ++ jsonStringArray certificatePackages ++
  ",\"sourceFile\":" ++ jsonString (sourceFileHintForDeclaration name) ++ "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `445735cc7fe93e279ac0e830eaaba311dfff0e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
