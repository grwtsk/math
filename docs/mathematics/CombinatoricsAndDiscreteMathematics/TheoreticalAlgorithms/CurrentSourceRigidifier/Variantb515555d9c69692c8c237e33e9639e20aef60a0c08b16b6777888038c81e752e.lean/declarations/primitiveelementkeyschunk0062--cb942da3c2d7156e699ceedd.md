# primitiveElementKeysChunk0062

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50488970ff1f6ae89f832225960fac756df73c190974a9f972c91f58335fd149",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0062",
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
  "slug": "primitiveelementkeyschunk0062--cb942da3c2d7156e699ceedd",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4316,
    "line": 4249,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb942da3c2d7156e699ceedd9da139e762325a5badbae6574e35dbc564fc6926",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50488970ff1f6ae89f832225960fac756df73c190974a9f972c91f58335fd149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4249–4316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0062 : List String :=
[
  "source-command:b3504751fb39f6bb9b3348adafae86acdcb46e4ad7c48d709728e3bc167a5bd2",
  "source-command:b3cef3b1b96f5fb3c2a1209fd0f85ec059d34af5cb75cac98d3909742b1405f5",
  "source-command:b3fe447d460acc9bd6378a30e2e08d66a4e913e66432e2210b89030e9d9cf38b",
  "source-command:b402aa3e5b606fa16e1aecc06a46e8d085f5bd5153bfd641f10ec50941b95994",
  "source-command:b403f3c0048a7a41ed8068c8c51adddd2a9e48a2d40ef26df5d40b1ea96d0f15",
  "source-command:b40f6ff426c65c6a9e2e410940666c8a86bddf9a45756c2c61867e9fc0399277",
  "source-command:b412f922fdb717a0143762580ad3d0796f41dd60fb0019260e7e7defc89c3019",
  "source-command:b4328c7715ee32ea431b6a522b3b0c6e2b5074410bab35b0bc6eb235f55b2007",
  "source-command:b456a3418705bcebdc2bfa22c709377b5ec20961f25c8f80a7690e2abbb4063c",
  "source-command:b45b5dab3db1335487358f210e11548c668285318af354e883caad1b886d2e60",
  "source-command:b46f0df7208f79199bca7e3a6d3b3a7324a3ae681b6590bf70aebf4cb4d5a30c",
  "source-command:b49f610c4777721c26ebcdb117467c2495e87e97bc73eaf0a556375d9a898571",
  "source-command:b500ee5f893a24bf235d5518f2cd0057c7f15011fd0ecb7f7fc782df4fe2aa91",
  "source-command:b57e7ef801f2267aeead871fa21ec0e6eb8f2fdca7cc649080b023bd2ad702f3",
  "source-command:b58593a18fde9c9f4f6bf61a3dff15289faa06cbf4c36196d14eddef9a2ad4eb",
  "source-command:b5ea3292741f220e4696139d2024363ef201e130e5bc0347caee51d1c09fb086",
  "source-command:b6065e29fb26c1c8aed6a110eb6940d8c49b30fcbbb4db5f022f90651d025cff",
  "source-command:b6275af9071933b621d2dba49196bd409bfa08ab91da3ff4155fc1998b9878ca",
  "source-command:b62cb7e2c9f4f7ac835ab33afced29920c69e285472d4a0c2327302978493531",
  "source-command:b63502b483c42185e3cc810ce5f95d051c307b323cad1259547bfa9e18ac317a",
  "source-command:b67f5a38a465aebc1a4478cd6d99bf50641de076eb6a4c1156cc716c440c7b54",
  "source-command:b6b3b48af2795a64a321ae7c7a522239a01c23608e55bc498440ca273c7f5bef",
  "source-command:b6e9bdc990eeb4adf3a61351af42b8c73b87a86700fcb8fdce328b4ba44ecc4c",
  "source-command:b6ebd86ea1aad7f853120d9179afe6837fed79505a95447a018ba0fb193575d0",
  "source-command:b71f551d881727c2db6a3bda9d961cdb271837a687c93a143d51fc6f8cefc82b",
  "source-command:b75216bf898c2b3e53b463ff971c1f07ad32cc124d7e302d09f7b13b4c47434d",
  "source-command:b7612a6b00d5a936c1f753f0d210edd3d7dd4ed9f9eb268c4cb21f1e6ab6ae96",
  "source-command:b7a5f270fc5df9c21c88c4ec71f2c48be717d1768e1ec94c2853b100289cd5b1",
  "source-command:b7b131dcf2bf8294241949c2316596ff89d83fdc10fe8569d5791843699ad31a",
  "source-command:b7ed96c99c89c66eed5fd682585dbfe4044278f23ba97ce93a4f85f51b386d28",
  "source-command:b811e576412ca3c7da5ed206b52e4b9efe8110e274e31a94b6397feb6b3f7f1d",
  "source-command:b848fa4ff2354d9b71b6fadad8f40e5927d967e07607814ebd4ead4b505b6b43",
  "source-command:b866404f728e6c9818edaa25b072e8f48a21a987ce038f883dcfa032d9530816",
  "source-command:b88f745a8fbe0de5828accdbf5c4b4f0ad1eeae5d6b7e5305fc652b35fc7a13a",
  "source-command:b8ef205c9e48519409530a0c63a6730b3236797c876c91cd2a1b911ff330e20c",
  "source-command:b8f9041858aeabacb524dd2b53900ad6ae372b8c966b15bcf5afbd10ee15bd9e",
  "source-command:b90e1e5d9ed86fe886efa55411306fc7771dec6f3c6c0a6bb314a324846b17f9",
  "source-command:b92cef0ea358a15aa1399fcfd305f481c1cf4140be3fd7d902d3d199b9940d3d",
  "source-command:b97d93f6f75be96d53dae3d880818dd72fb18e7ec06ee3422fbe4414d3e95bfc",
  "source-command:b98ee5309c57896cba61668303b320ff52ab7cfb9d25bd378d766f327c14c769",
  "source-command:ba636d1d7f5594c10872c37bbf0f3cf9388fb135e94810ed8eadf9babf6d10b1",
  "source-command:ba6a45cf41003282abe1429efeb4a2cd70d8890a10e2c3af1ce0afb99f6c7f4d",
  "source-command:ba6d52ecc26203f2b5cfe259d15975c851108cd50040245854301620b2b86777",
  "source-command:ba6e7f5b9d3a0e167f52ec1e46c681b28c50ce819a9661d93abd7809b3a1e10b",
  "source-command:ba6f272058f55485c078235b6820e9ec44d95e585c80acf68755cf1501b938cd",
  "source-command:baacc0cc63bea0248ea0bc87f36481daef91c3ae306e601dd27818e756ffe088",
  "source-command:baaff7cb7f9c99da39f9b70b52e068d9bc65a10ec077669b76026c9a6975f082",
  "source-command:bb400cd7088ae220e35ebf9ca365f8586cbd829dcd247001ac3d789bc308d61d",
  "source-command:bb4cb97bf83fb314d4bcffdb7bee67a34453a31f2ce78abca56b0d291d51d4e4",
  "source-command:bb8b51b341b069cb53cc44126a0e9e480824e4b6ff43867f8f185b0a8315b75b",
  "source-command:bb8dec0326c9d4f5352e5051f2c3bf6d87c6738adbfd7358c0ceebf35094e348",
  "source-command:bc142613107132fe34ffb09cc6f782e2a11bd00af6c57f961d6ecdb03aba8367",
  "source-command:bc22e69fa05e7aec5620e5e982117c027a0bdd8a147f4055bb244ae40c18a703",
  "source-command:bc32511c0a7a02d1f085c70447a9c9377fc30f72683e6cc8b3a6656ba44734d5",
  "source-command:bc592ff600c1e5915a5c3753218786a4b0357f9ece38260f3faccd12e180a0c2",
  "source-command:bcae0cc60f57a2c46dcce29ced710044cfb51441e9aa6096534cf6a5b63b9d75",
  "source-command:bcca3c24f05ca722df7dab446aad040243cd87935e9ded2d0128eeebae624d62",
  "source-command:bccd93b4d61bf30be3d4eba253a479245860a3cda8f45c06f7d0292ed02f19e2",
  "source-command:bce4422a899cf372cf3a7e5b213c0ba19d739a6a5964a68fcd45e27cc92e7e4e",
  "source-command:bd060a46d5bc4fdc8e1a34253b9bb9699998ce3903907d6b9fcf6fe404089032",
  "source-command:bd11a8b4977a0c60a711827c859937c257da8f3dcf321a88ba1b841f8b6de825",
  "source-command:bd1b20d8c3a6bea9faea978b6812d88838de71ebf98b4242dc79366774b1b1d2",
  "source-command:bd204ed1eef12c4301165144ec86556af9b17390b684db8cfd354df0420bdda5",
  "source-command:bd252da16f1dd58f1914ae43f81fe2de24026c776ca18c51e18698d8d1fbf27e"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L4249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
